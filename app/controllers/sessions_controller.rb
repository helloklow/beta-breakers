class SessionsController < ApplicationController
  def home
    render :home
  end

  def new
    @user = User.new
  end

  def create
    if auth_hash = request.env["omniauth.auth"]
      @user = User.find_or_create_by_omniauth(auth_hash)
      session[:user_id] = @user.id
      redirect_to login_path
    else
      @user = User.find_by(email: params[:user][:email]) # form_for creates nested hash!
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id 
        redirect_to user_path(@user)
      else 
        flash[:error] = "Sorry, username or password is incorrect."
        redirect_to '/login'
      end
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end
end