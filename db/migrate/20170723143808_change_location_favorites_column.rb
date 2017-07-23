class ChangeLocationFavoritesColumn < ActiveRecord::Migration[5.0]
  def change
  change_column :players, :favorite_thing, :string, after: :number_games_played
  end
end
