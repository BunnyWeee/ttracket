class RacketsController < ApplicationController

  def index
    @rackets = Racket.all
  end

  def new
    @racket = Racket.new
  end

  def create
    @racket = Racket.new(racket_params)

    if @racket.save
      redirect_to rackets_path,notice: "新增球拍成功！"
    else
      render :new
    end
  end

  def edit
    @racket = Racket.find_by(id: params[:id])
  end

  def update
    @racket = Racket.find_by(id: params[:id])

    if @racket.update(racket_params)
      redirect_to rackets_path,notice: "更新資料成功！"
    else
      render :edit
    end
  end

  def destroy
    @racket = Racket.find_by(id: params[:id])
    @racket.destroy if @racket
    redirect_to rackets_path, notice: "球拍資料刪除成功！"
  end

  private
  
  def racket_params
    params.require(:racket).permit(:brand, :product, :code, :grip, :material, :weight, :size, :thickness)
  end

end
