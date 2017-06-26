class Player < ApplicationRecord
	self.has_many :games
	validates_presence_of :username
	validates_uniqueness_of :username


# 
# def self.get_game_id
# 	binding.pry
# 	player = self.find(params[:id])
#
# 	game = Game.where(:player_id => player.id).to_a
#
# 	game.each do |one_game|
# 		if params[:id].to_i == one_game.id
# 				this_game = one_game
# 		end
# 	end
#
# end



end
