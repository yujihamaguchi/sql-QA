-- Q: numbers（1〜99までの自然数）から素数を抽出せよ。（numbersはdigitsから生成せよ。）
-- A:
/*
CREATE TABLE numbers AS
SELECT
  r1.digit
  + r2.digit * 10 AS num
FROM
  digits r1
CROSS JOIN
  digits r2
;
*/
/*
WITH numbers AS (
	SELECT
		r1.digit * 10 + r2.digit AS n
	FROM
		digits r1
		,digits r2
	WHERE
		r1.digit * 10 + r2.digit > 0
)
SELECT
	r1.n
FROM
	numbers r1
WHERE
	NOT EXISTS (SELECT *
		FROM
			numbers r2
		WHERE
			r1.n > r2.n
			AND r2.n <> 1
			AND mod(r1.n, r2.n) = 0)
;
*/
CREATE OR REPLACE VIEW numbers AS
  SELECT
    r1.digit
    + r2.digit * 10 AS num
  FROM
    Digits r1
  CROSS JOIN
    Digits r2
;
SELECT
  num
FROM
  numbers r1
WHERE
  NOT EXISTS (SELECT * FROM numbers r2 WHERE
    r1.num <> r2.num
    AND r2.num <> 1
    AND mod(r1.num, r2.num) = 0)
ORDER BY 
  num
;
