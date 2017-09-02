class EventsController < ApplicationController

	def index
		@events = Event.all
	end
	
	def create
		@event = current_user.events.create(event_params)
		if @event.save
			redirect_to current_user
		else
			flash.now[:danger] = 'Wrong parameters. Event wasn`t created.'
			render current_user
		end
	end

def event_params
		params.require(:event).permit(:name, :date, :location, :maker_id)
	end

end
