class Attendee < ApplicationRecord

has_many :lists
has_many :attended_events, through: :lists, source: :event

end
