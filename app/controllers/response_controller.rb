class ResponseController < ApplicationController
  def index
  end

  def show
    @response = Response.find(params[:id])
    @item = Item.find(@response.item_id)
    @asker = User.find_by_id(@item.user_id)
  end
  
  def new
    @user = current_user
    @item = Item.find(params[:id])
    @response = Response.new
  end

  def create
    @item = Item.find(params[:id])
    @response = Response.new(params[:response])
    if @response.save
      render item_path(@item)
      flash.now[:notice] = "Response posted"
    else
      render item_path(@item)
      flash.now[:error] = "Unable to post response"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
