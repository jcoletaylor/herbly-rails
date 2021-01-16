json.extract! formula_manifestation, :id, :formula_id, :tongue, :tongue_coat, :pulse, :created_at, :updated_at
json.symptoms formula_manifestation.symptoms.each do |symptom|
    json.partial! 'symptoms/symptom', symptom: symptom
end
json.url formula_manifestation_url(formula_manifestation, format: :json)
