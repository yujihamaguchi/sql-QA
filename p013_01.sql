-- Q: poptbl2を男女別、県別の人数を求めよ。{県名, 男人数, 女人数}
-- A
SELECT
  pref_name
  ,SUM(CASE WHEN sex = '1' THEN population ELSE 0 END) AS m
  ,SUM(CASE WHEN sex = '2' THEN population ELSE 0 END) AS f
FROM
  poptbl2
GROUP BY
  pref_name
ORDER BY
	1
;