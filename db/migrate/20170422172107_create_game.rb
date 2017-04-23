class CreateGame < ActiveRecord::Migration[5.0]
  def change
    create_table  :games do |t|
      t.integer   :player_id
      t.integer   :correct_answers
      t.integer   :final_score
      t.timestamp :created_at
    end
  end
end
