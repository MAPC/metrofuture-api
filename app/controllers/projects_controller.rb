class ProjectsController < ApplicationController
  include ApiHelper

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
    render json: json
  end

  def show
    @project = Project.find params[:id]
    json = JSONAPI::Serializer.serialize(@project, include: includes, is_collection: false)
    render json: json
  end
end


=begin

Logic:

- We cache responses with their URLs in order to avoid database query time, mostly for image data
- If images are fast / loaded separately, do we really need to cache these responses anymore?
- If we do, we should invalidate the cache when
    - The IDs for a given page are different from the expected IDs
    - The projects have been updated since the cache was set (ModifiedOn < expires_at)
- We can set the expiring key's value to the set of sorted ids (or a hash of this).
  - For a precondition, we check the sorted ids against the expire key's value.



=end