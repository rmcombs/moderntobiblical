json.array!(@quotes) do |quote|
  json.extract! quote, :id, :user
  json.url quote_url(quote, format: :json)
end
