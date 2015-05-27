-- Q: seqtblのseqの欠番を全て抽出せよ。(digitsを用いて）
-- A:
/*
WITH numbers AS (
SELECT
  r1.digit
  + r2.digit * 10 AS num
FROM
  digits r1
CROSS JOIN
  digits r2)
SELECT
  num
FROM
  numbers
WHERE
  num BETWEEN (SELECT MIN(seq) FROM seqtbl) AND (SELECT MAX(seq) FROM seqtbl)
MINUS
SELECT
  seq
FROM
  seqtbl
;
*/
SELECT
	digit
FROM
	digits r1
WHERE
	NOT EXISTS (SELECT *
		FROM
			seqtbl r2
		WHERE
			r1.digit = r2.seq)
	AND r1.digit >= (SELECT MIN(seq) FROM seqtbl)
	AND r1.digit <= (SELECT MAX(seq) FROM seqtbl)
;