class ProjectsController < ApplicationController
  helper ApiHelper

  def index
    page_number = params[:page] ? ( params[:page][:number] || 1 ) : 1
    per_page    = params[:page] ? ( params[:page][:size]   || Kaminari.config.default_per_page ) : Kaminari.config.default_per_page

    @projects = Project.all.page(page_number).per(per_page)
    render json: @projects
  end

  def show
    @project = Project.find params[:id]
    render 'projects/show'
  end
end
