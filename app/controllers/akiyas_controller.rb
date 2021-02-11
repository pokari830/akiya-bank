class AkiyasController < ApplicationController

  def index
    @akiyas = Akiya.all
    @akiyas = Akiya.page(params[:page]).per(10)
  end

  def show
    @akiya = Akiya.find(params[:id])
    @madori = Madori.where(id: @akiya.madori_id)
  end

  def new
    @akiya = Akiya.new
  end

  def create
    @akiya = Akiya.new(akiya_params)
    if @akiya.save
      flash.now[:notice] = '登録完了しました。'
      redirect_to root_path
    else
      flash.now[:alert] = '正しく入力してください。'
      render :new
    end
  end

  def search
    @akiyas = Akiya.all
  end

  def edit
  end

  def delete
  end

  private
  def akiya_params
    params.require(:akiya).permit(:address, :image, :madori_id)
  end

end
