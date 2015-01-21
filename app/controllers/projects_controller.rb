class ProjectsController < ApplicationController

  def index
    # define the variable  to rspec the factory in projetc_factory.rb
    @projects = Project.all
  end

  def new
  	@project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
    flash[:alert] = "Project has not been created."
    
    render "new"
  end 
end

def show
  @project = Project.new
end

def edit
  #@project = Project.find(params[:id])
  @project = Project.find(project_params)
end

private

def project_params
  params.require(:project).permit(:name, :description)
end

end