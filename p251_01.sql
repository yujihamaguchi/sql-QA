-- Q: TestResultsより、クラス（class）毎の点数（score）のランキングを表示する列を追加して表示せよ。
--    その際、順位が飛ばない（DENSE）ランキングも追加せよ。
-- A:
SELECT
  student
  ,class
  ,score
  ,RANK() OVER (PARTITION BY class ORDER BY score DESC) AS ranking
  ,DENSE_RANK() OVER (PARTITION BY class ORDER BY score DESC) AS dense_ranking
FROM
  TestResults
;
