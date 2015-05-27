-- Q: products3から、値段が同じ商品の組み合わせを取得せよ。
-- A
SELECT
  r1.name
  ,r2.name
FROM
  products3 r1
  ,products3 r2
WHERE
  r1.name < r2.name
  AND r1.price = r2.price
;