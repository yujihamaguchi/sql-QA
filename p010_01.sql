-- Q: poptblを地方単位（四国、九州、その他）にまとめ、その単位で人口を集計せよ。
-- A
SELECT
  CASE
    WHEN pref_name IN ('徳島', '香川', '愛媛', '高知') THEN '四国'
    WHEN pref_name IN ('福岡', '長崎', '佐賀') THEN '九州'
    ELSE 'その他'
  END AS district
  ,SUM(population) AS population
FROM
  poptbl
GROUP BY
  CASE
    WHEN pref_name IN ('徳島', '香川', '愛媛', '高知') THEN '四国'
    WHEN pref_name IN ('福岡', '長崎', '佐賀') THEN '九州'
    ELSE 'その他'
  END
ORDER BY 1
;