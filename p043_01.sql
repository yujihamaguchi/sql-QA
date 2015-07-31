-- Q: Products2のnameの2列の重複組み合わせを求めよ。重複は許すので(みかん,みかん)のようなペアもOK
-- A:
SELECT
  DISTINCT
  r1.name AS name_1
  ,r2.name AS name_2
FROM
  Products2 r1
  ,Products2 r2
WHERE
  r1.name >= r2.name
;
