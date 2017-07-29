class CreateTableClues < ActiveRecord::Migration[5.0]
  def change
    create_table :table_clues do |t|
      t.string   "answer"
      t.text     "question"
      t.integer  "value"
      t.datetime "airdate"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "category_id"
      t.integer  "game_id"
      t.integer  "invalid_count"
    end
  end
end
