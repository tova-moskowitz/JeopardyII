class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string    :username, :limit => 32, :null => false
      t.integer   :highest_score
      t.integer   :number_games_played
      t.timestamp :created_at

      t.timestamps
    end
  end
end
