-- Q: Salesについて、前年より横ばい"-"、成長"UP"、交代"DOWN"を年度ごとに示せ。
-- A
SELECT
  year
  ,CASE
    WHEN sale = (SELECT sale FROM Sales r2 WHERE r1.year = r2.year + 1) THEN '-'
    WHEN sale > (SELECT sale FROM Sales r2 WHERE r1.year = r2.year + 1) THEN 'UP'
    WHEN sale < (SELECT sale FROM Sales r2 WHERE r1.year = r2.year + 1) THEN 'DOWN'
  END AS status
FROM
  Sales r1
;
