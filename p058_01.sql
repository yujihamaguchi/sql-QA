-- Q: class_bの東京在住の誰よりも若いclass_aの生徒を抽出せよ。(ALLを使って)
-- A
SELECT *
FROM
	class_a
WHERE
	age < ALL (SELECT age FROM class_b WHERE city = '東京' AND age IS NOT NULL)
;