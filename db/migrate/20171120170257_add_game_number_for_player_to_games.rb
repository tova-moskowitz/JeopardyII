class AddGameNumberForPlayerToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :game_number_for_player, :integer
  end
end
