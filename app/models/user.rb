class User < ApplicationRecord

has_many :events, foreign_key: :maker_id


end
