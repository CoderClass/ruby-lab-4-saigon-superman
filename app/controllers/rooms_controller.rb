class RoomsController < ApplicationController
	
	def create
  	room = Room.new room_params
  	room.save
  end

private

  def room_params
  	params.require(:room).permit(:name)
  end
end
