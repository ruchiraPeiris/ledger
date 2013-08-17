class LedgerRecordColumnToCurrencyDecimal < ActiveRecord::Migration
  def up
    change_column :table_records, :value, :decimal, :precision => 8, :scale => 2
  end

  def down
    change_column :table_records, :value, :decimal
  end
end
