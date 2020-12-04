class AkiyasController < ApplicationController

  def index
    @akiya = Akiya.all
    @akiyas = Akiya.page(params[:page]).per(10)
  end

  def show
    @akiya = Akiya.find(params[:id])
  end

  def new
    @akiya = Akiya.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def delete
  end

  private
  def akiya_params
    params.require(:akiya).premit(:id, :address, :image)
  end

end
