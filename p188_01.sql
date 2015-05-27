-- Q: testresultsより、女子の平均点が、男子の平均点より高いクラスを選択せよ。（Dが選択されてはならない）
-- A:
SELECT
  class
FROM
  testresults
GROUP BY
  class
HAVING
  AVG(CASE WHEN sex = '女' THEN score ELSE NULL END)
  > AVG(CASE WHEN sex = '男' THEN score ELSE NULL END)
;