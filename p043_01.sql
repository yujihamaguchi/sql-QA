-- Q: products2のnameの2列の重複組み合わせを求めよ。重複は許すので(みかん,みかん)のようなペアもOK
-- A:
SELECT
  DISTINCT
  r1.name AS name_1
  ,r2.name AS name_2
FROM
  products2 r1
  ,products2 r2
WHERE
  r1.name >= r2.name
;