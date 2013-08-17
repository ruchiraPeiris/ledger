json.array!(@tables) do |table|
  json.extract! table, :name, :description
  json.url table_url(table, format: :json)
end
