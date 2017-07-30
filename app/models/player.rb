class Player < ApplicationRecord
	self.has_many :games
	validates_presence_of :username
	validates_uniqueness_of :username


  def self.whoami(name, verb)
		return 'I am ' + name + ' and I like ' + verb
	end



end
