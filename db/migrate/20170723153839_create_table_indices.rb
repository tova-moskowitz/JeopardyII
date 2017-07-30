class CreateTableIndices < ActiveRecord::Migration[5.0]
  def change
    create_table :table_indices do |t|
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end
