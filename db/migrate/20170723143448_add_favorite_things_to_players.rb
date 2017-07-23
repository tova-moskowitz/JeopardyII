class AddFavoriteThingsToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :favorite_thing, :string
  end
end
