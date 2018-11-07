class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def _signup
	  @user = User.new
	end

	def _addUser 
	   @user = User.new(user_params) 
	   if @user.save
	     redirect_to '/users' 
	   else 
	     redirect_to '/' 
	   end 
	end

	def _show
	  @user = User.find(params[:id])
	end
	
	def _edit
	  @user = User.find(params[:id])
	  if @user.update(user_params)
	   redirect_to '/users' 
	  else 
	   redirect_to '/' 
	  end 
	end

	def _delete
	  @user = User.find(params[:id])
	  if @user.destroy
	   redirect_to '/users' 
	  else 
	   redirect_to '/' 
	  end 
	end

	private
	  def user_params
	   params.require(:user).permit(:first_name, :last_name, :nick_name, :address, :phone, :email, :password)
	  end
end
