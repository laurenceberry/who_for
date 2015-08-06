json.array!(@profile_image_repeatables) do |profile_image_repeatable|
  json.extract! profile_image_repeatable, :id
  json.url profile_image_repeatable_url(profile_image_repeatable, format: :json)
end
