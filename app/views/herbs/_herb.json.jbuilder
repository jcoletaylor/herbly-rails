json.extract! herb, :id, :name, :pinyin, :hanzi, :latin, :pharm_latin, :common_english
json.category herb.herb_category.name
json.properties herb.herb_properties.each do |property|
    json.partial! 'herb_properties/herb_property', herb_property: property
end
json.dosages herb.herb_dosages.each do |dosage|
    json.partial! 'herb_dosages/herb_dosage', herb_dosage: dosage
end
json.actions herb.herb_actions.each do |action|
    json.partial! 'herb_actions/herb_action', herb_action: action
end
json.warnings herb.herb_warnings.each do |warning|
    json.partial! 'herb_warnings/herb_warning', herb_warning: warning
end
json.combinations herb.herb_combinations.each do |combination|
    json.partial! 'herb_combinations/herb_combination', herb_combination: combination
end
json.notes herb.herb_notes.each do |note|
    json.partial! 'herb_notes/herb_note', herb_note: note
end
json.url herb_url(herb, format: :json)
