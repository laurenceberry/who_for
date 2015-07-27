json.array!(@profile_characteristic_repeatables) do |profile_characteristic_repeatable|
  json.extract! profile_characteristic_repeatable, :id, :name, :content, :profile_id
  json.url profile_characteristic_repeatable_url(profile_characteristic_repeatable, format: :json)
end
