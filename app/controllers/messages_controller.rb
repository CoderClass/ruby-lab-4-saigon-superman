class MessagesController < ApplicationController
	def index
		
		puts params.inspect
		@messages = Message.all
		@room = Room.find(params[:room_id])

	end

	def create
		puts message_params.inspect
		message = Message.new message_params
		if message.save

			puts "successfully"
		else
			puts "fail"
		end
	end

	private 
	def message_params
		params.require(:message).permit(:room_id, :content)
	end
end
