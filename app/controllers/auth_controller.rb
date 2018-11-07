class AuthController < ApplicationController
  def index
  end

  def create
  @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])
   session[:user_id] = @user.id
   redirect_to '/'
  else
    redirect_to '/login', notice: "Email dan Password Salah, Coba Lagi !"
  end
 end

 def logout
  session[:user_id] = nil
  redirect_to '/login'
 end
end
