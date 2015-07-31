-- Q: TestResultsより、クラス（class）の75%以上の生徒が80点以上のクラスを選択せよ。
SELECT
  class
FROM
  TestResults
GROUP BY
  class
HAVING
  SUM(CASE WHEN score >= 80 THEN 1 ELSE 0 END) / COUNT(*) >= 0.75
;
