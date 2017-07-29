class RenameTableIndices < ActiveRecord::Migration[5.0]
  def change
    rename_table :table_indices, :indices
  end
end
