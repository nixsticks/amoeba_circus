class AmoebasController < ApplicationController
  def index
    @amoebas = Amoeba.all
  end

  def show
    @amoeba = Amoeba.find(params[:id])
  end

  def new
    @amoeba = Amoeba.new
  end

  def split
    Amoeba.find(params[:id]).mitosis

    redirect_to amoebas_path
  end

  def create
    @amoeba = Amoeba.new(amoeba_params)
    if @amoeba.save
      redirect_to @amoeba
    else
      render 'new'
    end
  end

  def edit
    @amoeba = Amoeba.find(params[:id])
  end

  def update
    @amoeba = Amoeba.find(params[:id])
    if @amoeba.update_attributes(amoeba_params)
      redirect_to @amoeba
    else
      render 'edit'
    end
  end

  def destroy
    Amoeba.find(params[:id]).destroy
    redirect_to amoebas_path
  end

  private
    def amoeba_params
      params.require(:amoeba).permit(:name, :talent_id, :first_child, :second_child, :generation, :act_ids => [])
    end
end
