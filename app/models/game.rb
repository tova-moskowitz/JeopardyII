class Game < ActiveRecord::Base
  self.belongs_to :player
end
