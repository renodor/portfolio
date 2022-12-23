class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @projects = Project.order(:order)
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @services = Service.all
    @technologies = Technology.all
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
    @services = Service.all
    @technologies = Technology.all
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to project_path(@project)
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :url, :github_repo, :order, :technologies, :published, :cover_photo, service_ids: [], technology_ids: [], photos: [])
  end
end
