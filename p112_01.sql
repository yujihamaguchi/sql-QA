-- Q: accountsより処理３回単位の累計、つまり移動累計を求めよ。
-- A
/*
SELECT
  prc_date
  ,prc_amt
  ,(SELECT
    SUM(prc_amt)
  FROM
    accounts r2
  WHERE
    r1.prc_date >= r2.prc_date
    AND (SELECT
          COUNT(*)
        FROM
          accounts r3
        WHERE
          r3.prc_date BETWEEN r2.prc_date AND r1.prc_date) <= 3
  HAVING COUNT(*) = 3
  ) AS summary
FROM
  accounts r1
;
*/
SELECT
	r1.prc_date
	,MAX(r1.prc_amt) AS prc_amt
	,SUM(r2.prc_amt) AS summary
FROM
	accounts r1
	,accounts r2
WHERE
	r1.prc_date >= r2.prc_date
	AND 3 >= (SELECT COUNT(*) FROM accounts r3 WHERE r3.prc_date BETWEEN r2.prc_date AND r1.prc_date)
GROUP BY
	r1.prc_date
ORDER BY
	1
;