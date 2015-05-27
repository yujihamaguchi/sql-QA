﻿-- Q: graduatesからincomeの最頻値（mode）とそのカウントを取得せよ
--    ・ALL述語を使用すること
-- A

SELECT
	income
	,COUNT(*)
FROM
	graduates
GROUP BY
	income
HAVING
	COUNT(*) >= ALL (
		SELECT
			COUNT(*)
		FROM
			graduates
		GROUP BY
			income)
;