class RenameTablePgSearchDocuments < ActiveRecord::Migration[5.0]
  def change
    rename_table :table_pg_search_documents, :pg_search_documents

  end
end
