class ProjectsController < ApplicationController

  def index
  	@projects = Project.all
  end

  def show
  	@project = Project.find(params[:id])
  end

  def new
  	@project = Project.new
  end

  def edit
  	@project = Project.find(params[:id])
  end

  def create
  	@project = Project.new(project_params)

  	if @project.save
  		redirect_to projects_url
  	else
  		render :new
  	end
  end

end
  def update
  	@project = Project.find(params[:id])

  	if @project.update_attributes(project_params)
  		redirect_to project_path(@project)
  	else
  		render :edit
  	end
  end

  private
  def project_params
  	params.require(:product).permit(:title, :description, :funding_period, :goal)
end