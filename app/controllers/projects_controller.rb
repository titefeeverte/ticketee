class ProjectsController < ApplicationController

  def index
  end

  def new
  	@project = Project.new
  end

  def create
    @project = Project.new(params.permit[:project])
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
    # nothing, yet
  end 
end

#in order to solve ActiveModel::ForbiddenAttributesError in Creating_projects_specs_spec
def update
  if @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to @project
  end


  def show
    @project = Project.new
  end

  private

  def project_params
       params.require(:project).permit(:name, :description)
  end

end
end 