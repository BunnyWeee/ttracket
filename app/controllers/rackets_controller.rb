class RacketsController < ApplicationController
  before_action :find_racket, only: [:edit, :update, :destroy]

  def index
    @rackets = Racket.page(params[:page]).per(5)
  end

  def new
    @racket = Racket.new
  end

  def create
    @racket = Racket.new(racket_params)

    if @racket.save
      redirect_to rackets_path,notice: "新增球拍成功！"
    else
      respond_to do |format|
        format.html {render :new}
        format.js
      end
    end
  end

  def edit
  end

  def update
    if @racket.update(racket_params)
      redirect_to rackets_path,notice: "更新資料成功！"
    else
      render :edit
    end
  end

  def destroy
    @racket.destroy if @racket
    respond_to do |format|
      format.js
      redirect_to rackets_path, notice: "球拍資料刪除成功！"  
    end 
  end

  private
  
  def racket_params
    params.require(:racket).permit(:brand, :product, :code, :grip, :material, :weight, :size, :thickness)
  end

  def find_racket
    @racket = Racket.find_by(id: params[:id])
  end
end
