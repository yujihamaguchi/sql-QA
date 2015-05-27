-- Q: productsにてnameの非順序対（組み合わせ）を出力せよ。（ヒント：自己非等値結合を用いる）
-- A
SELECT
  r1.name AS name1
  ,r2.name AS name2
FROM
  products r1
  ,products r2
WHERE
  r1.name > r2.name
;