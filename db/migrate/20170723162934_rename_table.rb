class RenameTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :table_categories, :categories

  end
end
