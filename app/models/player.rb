class Player < ApplicationRecord
	self.has_many :games
	validates_presence_of :username
	validates_uniqueness_of :username



def self.hello
	# binding.pry
	self.ids.each do |c|
		puts c + self.ids
	# return self
end
end



end
