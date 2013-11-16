json.array!(@extended_families) do |extended_family|
  json.extract! extended_family, :relative, :alive
  json.url extended_family_url(extended_family, format: :json)
end
