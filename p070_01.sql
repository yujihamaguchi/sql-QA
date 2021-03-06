﻿-- Q: Graduatesのincome属性のメジアンを求めよ。
-- A
SELECT
  AVG(income)
FROM
  (SELECT
    r1.income
  FROM
    Graduates r1
    ,Graduates r2
  GROUP BY
    r1.income
  HAVING
    SUM(CASE WHEN r2.income >= r1.income THEN 1 ELSE 0 END) >= COUNT(*) / 2
    AND SUM(CASE WHEN r2.income <= r1.income THEN 1 ELSE 0 END) >= COUNT(*) / 2) r
;
