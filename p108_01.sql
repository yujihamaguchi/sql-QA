-- Q: sales2について、前年より横ばい"-"、成長"UP"、交代"DOWN"を年度ごとに示せ。
SELECT
  r1.year
  ,r1.sale
  ,CASE
    WHEN r1.sale = r2.sale THEN '-'
    WHEN r1.sale > r2.sale THEN 'UP'
    WHEN r1.sale < r2.sale THEN 'DOWN'
  END AS status
FROM
  sales2 r1
  ,(SELECT
    (SELECT
      MIN(year)
    FROM
      sales2 r2
    WHERE
      r1.year < r2.year) AS year
    ,sale
  FROM
    sales2 r1) r2
WHERE
  r1.year = r2.year
;