-- Q: p105を自己結合を用いて書き直せ。
-- A
SELECT
  r1.year
  ,CASE
    WHEN r1.sale = r2.sale THEN '-'
    WHEN r1.sale > r2.sale THEN 'UP'
    WHEN r1.sale < r2.sale THEN 'DOWN'
  END AS status
FROM
  Sales r1
  ,Sales r2
WHERE
  r1.year - 1 = r2.year
;
