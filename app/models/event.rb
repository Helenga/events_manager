class Event < ApplicationRecord

belongs_to :maker, class_name: 'User'

has_many :lists
has_many :attendees, through: :lists


end
