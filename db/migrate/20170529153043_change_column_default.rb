class ChangeColumnDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :players, :number_games_played, 0
    change_column_default :players, :highest_score , 0
  end
end
