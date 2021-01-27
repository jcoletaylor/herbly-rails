CREATE OR REPLACE FUNCTION full_search (search text)
	RETURNS SETOF search_results
	AS $$
	SELECT
		*
	FROM
		search_results
	WHERE
		document @@ plainto_tsquery('english', search)
	ORDER BY
		ts_rank(document, plainto_tsquery('english', search)) DESC;
$$
LANGUAGE sql
STABLE;