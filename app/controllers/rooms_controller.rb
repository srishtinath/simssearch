class RoomsController < ApplicationController
  
  before_action :find_room, only: [:show, :edit, :update]

  def show
  end

  def index
    @select_array = Room.color_schemes_list
    @rooms = Room.search(params[:search])
  end

  def new
    @room = Room.new
  end

  def edit
  end

  def update
    @room.update(room_params)
    redirect_to room_path(@room)
  end
  
  
  private

  def room_params
    params.require(:room).permit(:title, :style, :primary_color_scheme, :img_url, :blurb, :long_description, :search)
  end

  def find_room
    @room = Room.find(params[:id])
  end
end
