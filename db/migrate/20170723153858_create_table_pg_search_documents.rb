class CreateTablePgSearchDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :table_pg_search_documents do |t|
      t.text     "content"
      t.integer  "searchable_id"
      t.string   "searchable_type"
      t.datetime "created_at",      null: false
      t.datetime "updated_at",      null: false
    end
  end
end
