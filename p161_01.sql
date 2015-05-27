-- Q: digitsを用いて1〜524までの連番を出力せよ。
-- A:
SELECT
	r1.digit * 100 + r2.digit * 10 + r3.digit
FROM
	digits r1
	,digits r2
	,digits r3
WHERE
	(r1.digit * 100 + r2.digit * 10 + r3.digit) BETWEEN 1 AND 524
;