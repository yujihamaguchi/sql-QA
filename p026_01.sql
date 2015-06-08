-- Q: greatestsにて、key毎の最大値を取得せよ。
-- A
SELECT
	_key
	,CASE
		WHEN x >= y AND x >= z THEN x
		WHEN y >= z THEN y
		ELSE z
	END AS greatest
FROM
	Greatests
;
