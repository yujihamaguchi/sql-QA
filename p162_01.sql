-- Q: SeqTblのseqの欠番を全て抽出せよ。(Digitsを用いて）
-- A:
/*
WITH numbers AS (
SELECT
  r1.digit
  + r2.digit * 10 AS num
FROM
  Digits r1
CROSS JOIN
  Digits r2)
SELECT
  num
FROM
  numbers
WHERE
  num BETWEEN (SELECT MIN(seq) FROM SeqTbl) AND (SELECT MAX(seq) FROM SeqTbl)
MINUS
SELECT
  seq
FROM
  SeqTbl
;
*/
SELECT
	digit
FROM
	Digits r1
WHERE
	NOT EXISTS (SELECT *
		FROM
			SeqTbl r2
		WHERE
			r1.digit = r2.seq)
	AND r1.digit >= (SELECT MIN(seq) FROM SeqTbl)
	AND r1.digit <= (SELECT MAX(seq) FROM SeqTbl)
;
