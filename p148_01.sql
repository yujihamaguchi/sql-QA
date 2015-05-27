-- Q: testscoresについて、算数のscoreが80以上、且つ国語の点数が50以上のstudent_idを出力せよ。（student_id=400は国語が無いので抽出されないようにする）
-- A
/*
SELECT
  student_id
FROM
  testscores r1
WHERE
  NOT EXISTS (SELECT * FROM testscores r2 WHERE
    r1.student_id = r2.student_id
    AND 1 = CASE
              WHEN r2.subject = '算数' AND r2.score < 80 THEN 1
              WHEN r2.subject = '国語' AND r2.score < 50 THEN 1
              ELSE 0
            END)
GROUP BY 
  student_id
HAVING
  SUM(
    CASE
      WHEN subject = '算数' OR subject = '国語' THEN 1
      ELSE 0
    END) = 2
;
*/
SELECT
	student_id
FROM
	testscores
GROUP BY
	student_id
HAVING
	2 = SUM(
		CASE
			WHEN subject = '算数' AND score >= 80 THEN 1
			WHEN subject = '国語' AND score >= 50 THEN 1
			ELSE 0
		END)
;