-- Q: TestResultsより、50点以上を取った生徒の内、男子の数が女子より多いクラスを選択せよ。
-- A:
SELECT
  class
FROM
  TestResults
GROUP BY
  class
HAVING
  SUM(CASE WHEN sex = '男' AND score >= 50 THEN 1 ELSE 0 END)
  > SUM(CASE WHEN sex = '女' AND score >= 50 THEN 1 ELSE 0 END)
;
