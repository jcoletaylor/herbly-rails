json.extract! herb_action, :id, :herb_id, :herb_action_type_id, :created_at, :updated_at
json.herb_action_type herb_action.herb_action_type.name
json.annotations herb_action.herb_action_annotations.each do |annotation|
   json.partial! 'herb_action_annotations/herb_action_annotation', herb_action_annotation: annotation 
end
json.indications herb_action.herb_action_indications.each do |indication|
    json.partial! 'herb_action_indications/herb_action_indication', herb_action_indication: indication
 end
json.url herb_action_url(herb_action, format: :json)
