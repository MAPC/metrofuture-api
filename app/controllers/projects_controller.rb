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

    json = JSONAPI::Serializer.serialize(@projects, include: includes, is_collection: true)
    json[:links] = paginate(@projects)
    render json: json
  end

  def show
    @project = Project.find params[:id]
    json = JSONAPI::Serializer.serialize(@project, include: includes, is_collection: false)
    render json: json
  end
end
