class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @projects = Project.all.order(:order)
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @project.technologies = @project.technologies.join(',')
  end

  def create
    cleaned_params = project_params
    cleaned_params[:technologies] = cleaned_params[:technologies].split(',')
    @project = Project.new(cleaned_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    @project.technologies = @project.technologies.join(',')
  end

  def update
    project_params[:technologies]
    @project = Project.find(params[:id])
    cleaned_params = project_params
    cleaned_params[:technologies] = cleaned_params[:technologies].split(',')
    @project.update(cleaned_params)
    redirect_to project_path(@project)
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :url, :order, :web_development, :marketing, :graphic_design, :technologies, :cover_photo, photos: [])
  end
end
