class RoomFurnituresController < ApplicationController
  def new
    @room_furniture = RoomFurniture.new
  end

  def create
    @room_furniture = RoomFurniture.create(rf_params)
    redirect_to room_path(@room_furniture.room)
  end

  def edit
    @room_furniture = RoomFurniture.find(params[:id])
  end

  def update
    @rf = RoomFurniture.find(params[:id])
    @rf.update(rf_params)
    redirect_to room_path(@rf.room)
  end

  private

  def rf_params
    params.require(:room_furniture).permit(:room_id, :furniture_id)
  end
end
