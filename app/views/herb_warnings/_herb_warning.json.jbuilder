json.extract! herb_warning, :id, :herb_warning_type_id, :warning, :created_at, :updated_at
json.herb_warning_type herb_warning.herb_warning_type.name
json.url herb_warning_url(herb_warning, format: :json)
