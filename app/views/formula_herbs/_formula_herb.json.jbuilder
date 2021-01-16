json.extract! formula_herb, :id, :formula_id, :herb_id, :dosage, :created_at, :updated_at
json.herb do 
    json.partial! 'herbs/simple', herb: formula_herb.herb
end
actions = formula_herb.formula_herb_actions.map { |act| act.action_name }
json.actions actions
json.url formula_herb_url(formula_herb, format: :json)
