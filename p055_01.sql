-- Q: Class_Bの東京在住の生徒と年齢が一致しないClass_Aの生徒を抽出せよ。(NOT INの動きもみてみよう)
--    ※EXISTS述語は絶対にunknownを返さない為、INとEXISTSは同値変換が可能だが、NOT INとNOT EXISTSは不可能
-- A
SELECT *
FROM
	Class_A r1
WHERE
	NOT EXISTS (SELECT *
		FROM
			Class_B r2
		WHERE
			r2.city = '東京'
			AND r1.age = r2.age)
;
/* これは正しい結果を返さない
SELECT *
FROM
	Class_A
WHERE
	age NOT IN (SELECT age FROM Class_B WHERE city = '東京')
;
*/
/* これはOK
SELECT *
FROM
	Class_A
WHERE
	age NOT IN (SELECT age FROM (SELECT * FROM Class_B WHERE age IS NOT NULL) WHERE city = '東京')
;
*/
