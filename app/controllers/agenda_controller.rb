class AgendaController < ApplicationController
  def index
  end

  def show
    @agenda = Agenda.find(params[:id])
  end

  def new
    @user = current_user
    @agenda = Agenda.new
  end

  def create
    @user = current_user
    @agenda = Agenda.new(params[:agenda])
    if @agenda.save
      redirect_to :new, :notice => "Agenda added"
    else
      flash.now[:error] = "Failed to add Agenda"
      render 'new'
    end
  end
  
  def edit
  end

  def update
  end

  def destroy
  end
end
