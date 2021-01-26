CREATE OR REPLACE FUNCTION full_search (search text)
	RETURNS SETOF search_results
	AS $$
	SELECT
		*
	FROM
		search_results
	WHERE
		document @@ to_tsquery('english', search)
	ORDER BY
		name ASC
$$
LANGUAGE sql
STABLE;