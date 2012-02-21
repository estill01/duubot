class SessionController < ApplicationController
  def new
    unless logged_in?
      @user = User.new
    else
      redirect_to user_path(@user)
    end
  end

  def create
    if @user = login(params[:email], params[:password]) || login(params[:username], params[:password])
      redirect_back_or_to user_path, :notice => "Welcome back to #{BRAND}."
    else
      flash.now[:error] = "Was unable to log in."
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to login_path, :notice => "Logged out"
  end
end
