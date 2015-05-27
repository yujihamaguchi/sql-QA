-- Q: class_bの東京在住の生徒と年齢が一致しないclass_aの生徒を抽出せよ。(NOT INの動きもみてみよう)
--    ※EXISTS述語は絶対にunknownを返さない為、INとEXISTSは同値変換が可能だが、NOT INとNOT EXISTSは不可能
-- A
SELECT *
FROM
	class_a r1
WHERE
	NOT EXISTS (SELECT *
		FROM
			class_b r2
		WHERE
			r2.city = '東京'
			AND r1.age = r2.age)
;
/* これは正しい結果を返さない
SELECT *
FROM
	class_a
WHERE
	age NOT IN (SELECT age FROM class_b WHERE city = '東京')
;
*/
/* これはOK
SELECT *
FROM
	class_a
WHERE
	age NOT IN (SELECT age FROM (SELECT * FROM class_b WHERE age IS NOT NULL) WHERE city = '東京')
;
*/
