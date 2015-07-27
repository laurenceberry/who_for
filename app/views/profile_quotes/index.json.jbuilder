json.array!(@profile_quotes) do |profile_quote|
  json.extract! profile_quote, :id, :quote, :profile_id
  json.url profile_quote_url(profile_quote, format: :json)
end
