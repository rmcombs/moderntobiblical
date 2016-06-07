json.array!(@modern_quotes) do |modern_quote|
  json.extract! modern_quote, :id
  json.url modern_quote_url(modern_quote, format: :json)
end
