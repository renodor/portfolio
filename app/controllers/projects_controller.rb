class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @odd_projects = Project.where('id % 2 != 0')
    @even_projects = Project.where('id % 2 = 0')
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :url, :cover_photo, photos: [])
  end
end
