json.extract! formula_modification_set, :id, :formula_id, :purpose, :created_at, :updated_at
json.modifier formula_modification_set.formula_modifications.each do |mod|
    json.partial! 'formula_modifications/formula_modification', formula_modification: mod
end
json.url formula_modification_set_url(formula_modification_set, format: :json)
