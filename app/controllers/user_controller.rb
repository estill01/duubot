class UserController < ApplicationController
  before_filter :require_login, :except => [:new, :create, :show]

  def index
    @users = User.order(:created_at).page params[:page]
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      auto_login(@user)
      redirect_back_or_to(user_route(@user), :notice => "Welcome to #{BRAND}.")
    else
      flash.now[:error] = "Was not able to create your account."
      render 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to user_route(@user), :notice => "Account information updated."
    else
      flash.now[:error] = "Unable to update account information."
      render 'edit'
    end
  end

  def destroy
    @user = current_user
    logout
    @user.delete
  end
end
