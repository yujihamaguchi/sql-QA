SELECT
  pref_name
  ,SUM(CASE WHEN sex = '1' THEN population ELSE 0 END) AS m
  ,SUM(CASE WHEN sex = '2' THEN population ELSE 0 END) AS m
FROM
  PopTbl2
GROUP BY
  pref_name
;
