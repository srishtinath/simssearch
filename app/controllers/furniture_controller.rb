class FurnitureController < ApplicationController
  before_action :find_furniture, only: [:show, :edit]

  def show
  end

  def index
    @furnitures = Furniture.all
  end

  def new
    @furniture = Furniture.new
  end

  def edit
    @furniture.update(furniture_params)
    redirect_to furniture_path(@furniture)
  end

  private

  def furniture_params
    params.require(:furniture).permit(:style, :category, :img_url)
  end

  def find_furniture
    @furniture = Furniture.find(params[:id])
  end
end
