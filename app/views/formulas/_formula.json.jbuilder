json.extract! formula, :id, :name, :pinyin, :hanzi, :english, :common_english, :created_at, :updated_at
json.also_known_as formula.formula_also_knowns.each do |also_known|
    json.partial! 'formula_also_knowns/formula_also_known', formula_also_known: also_known
end
actions = formula.formula_named_actions.map { |act| act.name }
json.formula_actions actions
json.manifestation do
    json.partial! 'formula_manifestations/formula_manifestation', formula_manifestation: formula.formula_manifestation
end
json.herbs formula.formula_herbs.each do |formula_herb|
    json.partial! 'formula_herbs/formula_herb', formula_herb: formula_herb
end
json.syndromes formula.syndromes.each do |syndrome|
    json.partial! 'syndromes/syndrome', syndrome: syndrome
end
json.conditions formula.conditions.each do |condition|
    json.partial! 'conditions/condition', condition: condition
end
json.contraindications formula.formula_contraindications.each do |formula_contraindication|
    json.partial! 'formula_contraindications/formula_contraindication', formula_contraindication: formula_contraindication
end
json.interactions formula.formula_interactions.each do |formula_interaction|
    json.partial! 'formula_interactions/formula_interaction', formula_interaction: formula_interaction
end
json.notes formula.formula_notes.each do |formula_note|
    json.partial! 'formula_notes/formula_note', formula_note: formula_note
end
json.modifications formula.formula_modification_sets.each do |mod_set|
    json.partial! 'formula_modification_sets/formula_modification_set', formula_modification_set: mod_set
end
json.url formula_url(formula, format: :json)
