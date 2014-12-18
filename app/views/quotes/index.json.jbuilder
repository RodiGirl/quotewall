json.array!(@quotes) do |quote|
  json.extract! quote, :id, :statement, :saidby, :combination_id
  json.url quote_url(quote, format: :json)
end
