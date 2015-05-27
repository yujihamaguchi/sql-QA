-- Q: p105をSIGN関数を用いて、CASE句での評価を一回にするように書き直せ。
-- A
SELECT
  year
  ,CASE SIGN(r1.sale - (SELECT r2.sale FROM sales r2 WHERE r2.year = r1.year -1))
    WHEN 0 THEN '-'
    WHEN -1 THEN 'DOWN'
    WHEN 1 THEN 'UP'
  END AS status
FROM
  sales r1
;