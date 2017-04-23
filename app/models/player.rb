class Player < ActiveRecord::Base
	self.has_many :games
end
