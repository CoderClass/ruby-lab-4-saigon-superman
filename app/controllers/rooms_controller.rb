class RoomsController < ApplicationController
	
	def create
  	room = Room.new room_params
  	room.save
  end

  def show
  	@room = Room.find(params[:id])
  	redirect_to room_messages_path(@room)
  end

private

  def room_params
  	params.require(:room).permit(:name)
  end
end
