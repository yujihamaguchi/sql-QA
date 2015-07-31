-- Q: Accountsにて、処理日と処理日までの処理金額の合計を示せ。
-- A
/*
SELECT
  r1.prc_date
  ,SUM(CASE WHEN r1.prc_date >= r2.prc_date THEN r2.prc_amt ELSE 0 END) AS summary
FROM
  Accounts r1
  ,Accounts r2
GROUP BY
  r1.prc_date
ORDER BY
  r1.prc_date
;
*/
SELECT
  prc_date
  ,prc_amt
  ,(SELECT
    SUM(prc_amt)
  FROM
    Accounts r2
  WHERE
    r1.prc_date >= r2.prc_date) AS summary
FROM
  Accounts r1
;
