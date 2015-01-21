class ProjectsController < ApplicationController

  def index
    #define the variable  to rspec the factory in projetc_factory.rb
    @projects = Project.all
  end

  def new
  	@project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
    # nothing, yet
  end 
end

def show
  @project = Project.new
end

private

  def project_params
    params.require(:project).permit(:name, :description)
  end

end