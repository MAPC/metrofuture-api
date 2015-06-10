class ProjectsController < ApplicationController
  def index

    page_number = params[:page] ? ( params[:page][:number] || 1 ) : 1
    per_page    = params[:page] ? ( params[:page][:size]   || Kaminari.config.default_per_page ) : Kaminari.config.default_per_page

    projects = Project.page(page_number).per(per_page)
    render json: ProjectSerializer.new(projects, controller: self)
  end

  def show
    project = Project.find params[:id]
    render json: ProjectSerializer.new(project, controller: self)
  end
end
