class HomeController < ApplicationController
  def index
  	@rooms = Room.all
  	@room = Room.new
  end

  def create
  	room = Room.new room_params
  	room.save
  end

private

  def room_params
  	params.require(:room).permit(:name)
  end
end