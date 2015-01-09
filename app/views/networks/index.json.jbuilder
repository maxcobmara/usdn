json.array!(@networks) do |network|
  json.extract! network, :id, :name, :description, :ip_range
  json.url network_url(network, format: :json)
end
