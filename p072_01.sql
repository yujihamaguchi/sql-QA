-- Q: students_2より所属する全学生がレポート提出済みの学部を求めよ。
-- A
SELECT
  dpt
FROM
  students_2
GROUP BY
  dpt
HAVING
  COUNT(*) = COUNT(sbmt_date)
;