class ProjectsController < ApplicationController
  include ApiHelper

  def index
    @projects = Project.all.page(page_number).per(per_page)
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
