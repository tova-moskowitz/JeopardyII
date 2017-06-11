class Game < ApplicationRecord
  self.belongs_to :player

  # def self.whoami
  #   # binding.pry
  #   return self.ids
  # end

end
