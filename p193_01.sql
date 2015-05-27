-- Q: testscoresより、算数の点数が80点以上で、且つ国語の点数が50点以上の学生ＩＤ（student_id）を選択せよ。（HAVING句と特性関数を用いること）
-- A:
SELECT
  student_id
FROM
  testscores
WHERE
  subject IN ('算数', '国語')
GROUP BY
  student_id
HAVING
  2 = SUM(CASE
            WHEN subject = '算数' AND score >= 80 THEN 1
            WHEN subject = '国語' AND score >= 50 THEN 1
            ELSE 0
          END)
;
  
