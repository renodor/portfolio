class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @projects = Project.order(:order)
  end

  def show
    @project = Project.find(params[:id])
    @services = @project.services
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
    params.require(:project).permit(:name, :description, :url, :github_repo, :order, :technologies, :published, :cover_photo, service_ids: [], photos: [])
  end
end
