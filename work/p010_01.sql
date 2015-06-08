SELECT
  CASE
    WHEN pref_name IN ('徳島', '香川', '愛媛', '高知') THEN '四国'
    WHEN pref_name IN ('福岡', '佐賀', '長崎') THEN '九州'
    ELSE 'その他'
  END AS district
  ,SUM(population) AS population
FROM
  PopTbl
GROUP BY
  district
;

