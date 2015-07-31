-- Q: Salesから前年とsaleが変化しなかったyearを求めよ。
-- A
SELECT
  r1.year
FROM
  Sales r1
  ,(SELECT
    year + 1 AS year
    ,sale
  FROM
    Sales) r2
WHERE
  r1.year = r2.year
  AND r1.sale = r2.sale
;
