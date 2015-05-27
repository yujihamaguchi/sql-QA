-- Q: p112をOLAP関数を用いて書き直せ。
-- A
SELECT
  prc_date
  ,prc_amt
  ,SUM(prc_amt) OVER (ORDER BY prc_date ROWS 2 PRECEDING) AS summary
FROM
  accounts
;