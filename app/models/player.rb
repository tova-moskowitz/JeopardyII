class Player < ApplicationRecord
	self.has_many :games
	validates_presence_of :username
	validates_uniqueness_of :username
end
