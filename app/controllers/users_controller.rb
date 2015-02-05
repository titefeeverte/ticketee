	class UsersController < ApplicationController
	  
	  before_action :get_user, :only => [:show, :edit, :update ]
	 

	  #to set a new @user
	  def new
		@user = User.new
	  end

	#redirect elswhere rather than rener a page
	def create
	  @user = User.new(user_params)
	   if @user.save
	    flash.keep[:notice] = "Welcome! You have signed up successfully."
	    redirect_to projects_path
	  else 
	  	flash.keep[:notice] = "user not created"

	    render :new
	  end 
	end

	  def show
	  	# @user = User.find(params[:id])
	  end

	  def edit
	  end

	  def update
	  	if @user.update(user_params)
	  		flash.keep[:notice] = 'Profile has been updated.'
	  		redirect_to projects_path
	  	else
	  		flash.keep[:alert] = "Profile has not been updated."
	  		render action: 'edit'
	  	end
	  end

	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end

		def get_user
	 		@user = User.find(params[:id])	
		end


end