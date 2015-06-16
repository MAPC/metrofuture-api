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
    ImageCache.redis.hset :responses, @_request.env["REQUEST_URI"], JSON.generate( json )
    render json: json
  end

  def show
    @project = Project.find params[:id]
    json = JSONAPI::Serializer.serialize(@project, include: includes, is_collection: false)
    ImageCache.redis.hset :responses, @_request.env["REQUEST_URI"], JSON.generate( json )
    render json: json
  end

  private
    
    def check_for_and_cache_response
      response = ImageCache.redis.hget :responses, @_request.env["REQUEST_URI"]
      if response
        render json: JSON.parse( response )
        return false
      end
    end

end