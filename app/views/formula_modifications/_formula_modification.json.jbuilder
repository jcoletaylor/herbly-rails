json.extract! formula_modification, :id, :formula_modification_set_id, :herb_id, :modification, :created_at, :updated_at
json.herb do
    json.partial! 'herbs/simple', herb: formula_modification.herb
end
json.url formula_modification_url(formula_modification, format: :json)
