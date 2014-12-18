json.array!(@combinations) do |combination|
  json.extract! combination, :id, :context, :saidon
  json.url combination_url(combination, format: :json)
end
