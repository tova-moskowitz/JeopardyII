class RenameTableClues < ActiveRecord::Migration[5.0]
  def change
    rename_table :table_clues, :clues
  end
end
