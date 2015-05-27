-- Q: p111をOLAP関数を利用して書き直せ。
-- A
SELECT
  prc_date
  ,prc_amt
  ,SUM(prc_amt) OVER (ORDER BY prc_date) AS summary
FROM
  accounts
;