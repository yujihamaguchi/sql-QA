-- Q: Products3から、値段が同じ商品の組み合わせを取得せよ。
-- A
SELECT
  r1.name
  ,r2.name
FROM
  Products3 r1
CROSS JOIN
  Products3 r2
ON
  r1.name < r2.name
  AND r1.price = r2.price
;
