module ApplicationHelper
include EventsHelper

def log_in
	session[:user_id] = authenticate.id
end

def authenticate
	user = User.find_by(name: params[:user][:name])
end

def current_user
	@current_user = User.find_by_id(session[:user_id])
end

def log_out
	session.delete(:user_id)
end

def logged_in?
	!current_user.nil?
end

def today
	Date.today.to_time.strftime('%Y-%m-%d')
end

def future
	date = Date.today.to_time + 3.years
	date.strftime('%Y-%m-%d')
end

end
