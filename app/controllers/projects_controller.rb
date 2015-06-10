class ProjectsController < ApplicationController
  def index
    projects = Project.limit(10)
    render json: ProjectSerializer.new(projects, controller: self)
  end

  def show
    project = Project.find params[:id]
    render json: ProjectSerializer.new(project, controller: self)
  end
end
