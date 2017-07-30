class ChangePlayersColumnDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :players, :favorite_thing, 'stuff'
  end
end
