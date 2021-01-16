json.extract! herb_combination, :id, :description, :created_at, :updated_at
json.herbs herb_combination.herbs do |herb|
    json.partial! 'herbs/simple', herb: herb
end
json.use_cases herb_combination.herb_combination_use_cases do |use_case|
    json.partial! 'herb_combination_use_cases/herb_combination_use_case', herb_combination_use_case: use_case
end
json.url herb_combination_url(herb_combination, format: :json)
