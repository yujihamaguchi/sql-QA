-- Q: testscoresから全てのsubjectについてscoreが50以上のstudent_idを出力せよ。（EXISTS述語を用いること）
-- A
SELECT
	DISTINCT
	student_id
FROM
	testscores r1
WHERE
	NOT EXISTS (SELECT *
		FROM
			testscores r2
		WHERE
			r2.score < 50
			AND r1.student_id = r2.student_id)
ORDER BY
	1
;