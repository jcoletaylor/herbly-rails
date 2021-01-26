CREATE FUNCTION full_search (search text, lim int DEFAULT 20, off int DEFAULT 0)
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
	LIMIT lim OFFSET off
$$
LANGUAGE sql
STABLE;