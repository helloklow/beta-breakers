class SessionsController < ApplicationController
  def home
    render :home
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:user][:username]) # form_for creates nested hash!
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id 
      redirect_to user_path(@user)
    else 
      render :new
    end
  end

  def logout
    session.clear
    redirect_to '/'
  end
end
