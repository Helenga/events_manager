class SessionsController < ApplicationController

def new
	@user = User.new
end

def create
	log_in
	redirect_to current_user
end

def destroy
	log_out
	redirect_to root_url
end

end
