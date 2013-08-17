json.array!(@table_records) do |table_record|
  json.extract! table_record, :date, :description, :value
  json.url table_record_url(table_record, format: :json)
end
