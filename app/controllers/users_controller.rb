class UsersController < ApplicationController
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
      redirect_back_or_to :user_route(@user)
    else
      render 'edit'
      flash.now[:error] = "Was not able to create your account."
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes
      redirect_to user_route(@user), :notice => "Account information updated."
    else
      render 'edit'
      flash.now[:error] = "Unable to update account information."
    end
  end

  def destroy
    @user = current_user.delete
  end
end
