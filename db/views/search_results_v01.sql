SELECT
  herbs.id AS searchable_id,
  'Herb' AS searchable_type,
  herbs.name AS name,
  herbs.common_english AS common_english,
  setweight(to_tsvector('english', herbs.name::TEXT), 'A') ||
  setweight(to_tsvector('english', herbs.pinyin::TEXT), 'B') || 
  setweight(to_tsvector('english', herbs.common_english::TEXT), 'B') ||
  setweight(to_tsvector('english', coalesce(string_agg(herb_categories.name, ' '))::TEXT), 'C') || 
  setweight(to_tsvector('english', coalesce(string_agg(herb_action_types.name, ' '))::TEXT), 'C') || 
  setweight(to_tsvector('english', coalesce(string_agg(herb_notes.note, ' '))::TEXT), 'D') AS document
FROM herbs
LEFT OUTER JOIN herb_notes ON herbs.id = herb_notes.herb_id
LEFT OUTER JOIN herb_categories ON herbs.herb_category_id = herb_categories.id
LEFT OUTER JOIN herb_actions ON herbs.id = herb_actions.herb_id
LEFT OUTER JOIN herb_action_types ON herb_actions.herb_action_type_id = herb_action_types.id
GROUP BY herbs.id

UNION

SELECT
  formulas.id AS searchable_id,
  'Formula' AS searchable_type,
  formulas.name AS name,
  formulas.common_english AS common_english,
  setweight(to_tsvector('english', formulas.name::TEXT), 'A') ||
  setweight(to_tsvector('english', formulas.pinyin::TEXT), 'B') ||
  setweight(to_tsvector('english', formulas.common_english::TEXT), 'B') ||
  setweight(to_tsvector('english', coalesce(string_agg(formula_also_knowns.name, ' '))::TEXT), 'C') ||
  setweight(to_tsvector('english', coalesce(string_agg(formula_named_actions.name, ' '))::TEXT), 'C') ||
  setweight(to_tsvector('english', coalesce(string_agg(syndromes.name, ' '))::TEXT), 'C') ||
  setweight(to_tsvector('english', coalesce(string_agg(conditions.name, ' '))::TEXT), 'C') ||
  setweight(to_tsvector('english', coalesce(string_agg(formula_notes.note, ' '))::TEXT), 'D') AS document
FROM formulas
LEFT OUTER JOIN formula_notes ON formulas.id = formula_notes.formula_id
LEFT OUTER JOIN formula_also_knowns ON formulas.id = formula_also_knowns.formula_id
LEFT OUTER JOIN formula_actions ON formulas.id = formula_actions.formula_id
LEFT OUTER JOIN formula_named_actions ON formula_actions.formula_named_action_id = formula_named_actions.id
LEFT OUTER JOIN formula_syndromes ON formulas.id = formula_syndromes.formula_id
LEFT OUTER JOIN syndromes ON formula_syndromes.syndrome_id = syndromes.id
LEFT OUTER JOIN formula_conditions ON formulas.id = formula_conditions.formula_id
LEFT OUTER JOIN conditions ON formula_conditions.condition_id = conditions.id
GROUP BY formulas.id

ORDER BY name ASC;