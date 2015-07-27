-- Q: seqtblの連番に歯抜けが存在するかどうかチェックするクエリを書け。（存在する場合、「歯抜けあり」と出力すること）
-- A
SELECT
  '歯抜け有り' AS gap
FROM
  SeqTbl
HAVING
  COUNT(*) <> MAX(seq)
;
