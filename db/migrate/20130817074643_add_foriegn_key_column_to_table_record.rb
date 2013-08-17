class AddForiegnKeyColumnToTableRecord < ActiveRecord::Migration
  def up
    add_column :table_records, :table_id, :int, :null => false
  end

  def down
    remove_column :table_records, :table_id
  end
end
