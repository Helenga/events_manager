class UsersController < ApplicationController
include UsersHelper

before_action :logged_in?, only: :show

def new
	@user = User.new
end

def create
	@user = User.new(user_params)
	if @user.save
		log_in
		redirect_to @user
	else
		flash.now[:danger] = 'Registration`s failed'
		render :new
	end
end

def show
	@user = current_user
	@events = @user.events
	@event = @user.events.build # For _create_event_form
	@attendee = Attendee.new # For adding attendees to events
end

private

	def user_params
		params.require(:user).permit(:name)
	end

end
