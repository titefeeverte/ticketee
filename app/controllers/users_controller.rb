class UsersController < ApplicationController
  
  #to set a new @user
  def new
	@user = User.new
  end

#redirect elswhere rather than rener a page
def create
  @user = User.new(user_params)
  if @user.save
    flash[:notice] = "You have signed up successfully."
    redirect_to projects_path
  else
    render :new
  end 
end

  def show
  end

end

private
	def user_params
		params.require(:user).permit(:name, :password, :password_confirmation)
	end
