json.array!(@organisations) do |organisation|
  json.extract! organisation, :id, :shortname, :name, :description, :domain_type_id, :sub_domain_type_id
  json.url organisation_url(organisation, format: :json)
end
