class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
        t.string    :username
        t.integer   :highest_score
        t.integer   :number_games_played
    end
  end
end
