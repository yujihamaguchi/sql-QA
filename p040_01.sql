-- Q: products4にて、値段の高い順に順位をつけよ。同じ値段の商品は同じ順位になるようにして、次の順位は飛び石でよい。
--    ☆自己結合を用いて求めよ☆
-- A
SELECT
  r1.name
  ,MAX(r1.price)
  ,COUNT(r2.name) + 1 AS rank
FROM
  products4 r1
LEFT OUTER JOIN
  products4 r2
ON
  r1.price < r2.price
GROUP BY
 r1.name
ORDER BY
  rank
;