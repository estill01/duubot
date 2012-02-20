class ItemsController < ApplicationController
  def index
    @items = Item.order(:created_at).page params[:page]
  end

  def show
    @item = Item.find(params[:id])
    @responses = @item.responses
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      render :back
      flash.now[:notice] = "Item created"
    else
      render :back
      flash.now[:error] = "Unable to create item"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
