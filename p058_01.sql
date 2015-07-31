-- Q: Class_Bの東京在住の誰よりも若いClass_Aの生徒を抽出せよ。(ALLを使って)
-- A
SELECT *
FROM
	Class_A
WHERE
	age < ALL (SELECT age FROM Class_B WHERE city = '東京' AND age IS NOT NULL)
;
