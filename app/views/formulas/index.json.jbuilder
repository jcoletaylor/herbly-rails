json.meta do
    json.count @formulas_count
    json.page_sort @page_sort_params
end
json.data do
    json.array! @formulas, partial: "formulas/formula", as: :formula    
end
