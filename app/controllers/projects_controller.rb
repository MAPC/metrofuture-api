class ProjectsController < ApplicationController
  include ApiHelper
  before_filter :check_for_and_cache_response

  def index
    muni_id = filter.fetch(:municipalities) { nil }
    subr_id = filter.fetch(:subregions)     { nil }

    if muni_id
      @projects = Project.municipality(muni_id).page(page_number).per(per_page)
    elsif subr_id
      @projects = Project.subregion(subr_id).page(page_number).per(per_page)
    else
      @projects = Project.all.page(page_number).per(per_page)
    end

    json = JSONAPI::Serializer.serialize(@projects, include: includes, is_collection: true, context: {is_collection: true})
    json[:links] = paginate(@projects)
    DataCache.hset :responses, @_request.env["REQUEST_URI"], JSON.generate( json )
    render json: json
  end

  def show
    @project = Project.find params[:id]
    json = JSONAPI::Serializer.serialize(@project, include: includes, is_collection: false)
    DataCache.hset :responses, @_request.env["REQUEST_URI"], JSON.generate( json )
    render json: json
  end

  private

    CACHE_LOCK_DELAY = 2.hour.to_i # seconds

    def check_for_and_cache_response
      check_for_or_reset_cache_lock
      response = DataCache.hget :responses, @_request.env["REQUEST_URI"]
      if response
        json = JSON.parse( response )
        json[:meta] = { cache_expires: DataCache.get(:cache_lock), time: Time.now }
        render json: json
        return false
      end
    end

    def check_for_or_reset_cache_lock
      unless DataCache.get :cache_lock
        DataCache.set    :cache_lock, "#{CACHE_LOCK_DELAY.seconds.from_now}"
        DataCache.expire :cache_lock, CACHE_LOCK_DELAY
        # Clear the responses cache
        DataCache.hkeys(:responses).each {|k|
          DataCache.del :responses, k
        }
      end
    end

end