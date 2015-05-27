-- Q: salesから前年とsaleが変化しなかったyearを求めよ。
-- A
SELECT
  r1.year
FROM
  sales r1
  ,(SELECT
    year + 1 AS year
    ,sale
  FROM
    sales) r2
WHERE
  r1.year = r2.year
  AND r1.sale = r2.sale
;