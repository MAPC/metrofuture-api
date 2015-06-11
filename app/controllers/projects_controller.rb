class ProjectsController < ApplicationController
  helper ApiHelper

  def index
    @projects = Project.all.page(page_number).per(per_page)
    render json: JSONAPI::Serializer.serialize(@projects, include: includes, is_collection: true)
  end

  def show
    includes    = params[:include] ? ( params[:include].split(',') ) : []
    @project = Project.find params[:id]
    render json: JSONAPI::Serializer.serialize(@project, include: includes, is_collection: false)
  end
end
