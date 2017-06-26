class Game < ApplicationRecord
  self.belongs_to :player


  def self.whoami(name, verb)
      return 'I am ' + name + ' and I like to ' + verb
  end

end
