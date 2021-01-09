json.extract! herb, :id, :name, :pinyin, :hanzi, :latin, :pharm_latin, :common_english
json.category herb.herb_category.name
json.properties herb.herb_properties.each do |property|
    json.partial! 'herb_properties/herb_property', herb_property: property
end
json.dosages herb.herb_dosages.each do |dosage|
    json.partial! 'herb_dosages/herb_dosage', herb_dosage: dosage
end
json.url herb_url(herb, format: :json)
