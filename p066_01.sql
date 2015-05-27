-- Q: seqtblの歯抜けの最小値を求めよ。
-- A
SELECT
  MIN(seq + 1)
FROM
  seqtbl
WHERE
  seq + 1 NOT IN (SELECT seq FROM seqtbl)
;