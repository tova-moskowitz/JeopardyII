class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table  :games do |t|
      t.integer   :player_id, :null => false
      t.integer   :correct_answers
      t.integer   :final_score
      t.timestamp :created_at, :null => false

      t.timestamps
    end
  end
end
