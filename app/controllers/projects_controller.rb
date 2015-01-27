class ProjectsController < ApplicationController

  before_action :get_project, :only => [:show,:edit,:update, :destroy]

  def index
    # define the variable to rspec the factory in projetc_factory.rb
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
  # byebug
  a = 1

end

def edit
end

def update
    if @project.update(project_params)
      flash[:notice] = 'Project has been updated.'
      redirect_to @project
    else
      flash[:alert] = "Project has not been updated."
      render action: 'edit'
    end
end

def destroy
  @project = Project.find(params[:id])
  @project.destroy
  flash[:notice] = "Project has been destroyed."

  redirect_to projects_path
end

private

def project_params
  params.require(:project).permit(:name, :description)
end

=begin to resolve the rspec error:  1) ProjectsController displays an error for a missing project
     Failure/Error: get :show, id: "not-here"
     ActiveRecord::RecordNotFound:
       Couldn't find Project with 'id'=not-here
=end
def get_project
  @project = Project.find(params[:id])
   rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The project you were looking" +
                    " for could not be found."
    redirect_to projects_path
end




end