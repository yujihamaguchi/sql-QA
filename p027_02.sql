-- Q: greatestsのkey列を"B-A-D-C"の順に出力せよ
-- A:
SELECT
	key
FROM
	greatests
ORDER BY
	CASE key
		WHEN 'B' THEN 1
		WHEN 'A' THEN 2
		WHEN 'D' THEN 3
		WHEN 'C' THEN 4
		ELSE NULL
	END
;