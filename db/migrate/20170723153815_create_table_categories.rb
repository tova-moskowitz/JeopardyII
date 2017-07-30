class CreateTableCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|

      t.string   "title"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "clues_count", default: 0

    end
  end
end
