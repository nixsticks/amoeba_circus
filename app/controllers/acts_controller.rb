class ActsController < ApplicationController
  def index
    @acts = Act.all
  end

  def show
    @act = Act.find(params[:id])
  end

  def new
    @act = Act.new
  end

  def create
    @act = Act.new(act_params)
    if @act.save
      redirect_to @act
    else
      render 'new'
    end
  end

  def edit
    @act = Act.find(params[:id])
  end

  def update
    @act = Act.find(params[:id])
    if @act.update_attributes(act_params)
      redirect_to @act
    else
      render 'edit'
    end
  end

  def destroy
    Act.find(params[:id]).destroy
    redirect_to acts_path
  end

  private
    def act_params
      params.require(:act).permit(:name, :time, :date, :amoeba_ids => [])
    end
end
