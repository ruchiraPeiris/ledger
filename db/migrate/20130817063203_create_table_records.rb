class CreateTableRecords < ActiveRecord::Migration
  def change
    create_table :table_records do |t|
      t.date :date
      t.text :description
      t.decimal :value

      t.timestamps
    end
  end
end
