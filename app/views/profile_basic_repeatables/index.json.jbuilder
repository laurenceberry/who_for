json.array!(@profile_basic_repeatables) do |profile_basic_repeatable|
  json.extract! profile_basic_repeatable, :id, :name, :content, :profile_id
  json.url profile_basic_repeatable_url(profile_basic_repeatable, format: :json)
end
