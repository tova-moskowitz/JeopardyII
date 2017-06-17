class Player < ApplicationRecord
	self.has_many :games
	validates_presence_of :username
	validates_uniqueness_of :username



# def self.which_games
# 	all_my_games = self.ids
# 	end
#
# def self.how_many_games
# 	games_count = self.ids.count
# end


end
