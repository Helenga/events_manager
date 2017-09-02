class AttendeeController < ApplicationController
	
	def create
		@attendee = @event.attendees.create(attendee_params)
		if @attendee.save
			
		else
		
		end
	end

private

	def attendee_params
		params.require(:attendee).permit(:name)
	end

end
