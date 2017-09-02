module EventsHelper

def creator(event)
	User.find_by_id(event.maker_id)
end

def number_of_guests(event)
	List.where(event_id: event.id).count
end

end
