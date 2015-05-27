-- Q: seats3から最大で連続でして座れる座席範囲（ex. 1 〜 4）と何人が座れるかを出力せよ。
-- A:
/*
WITH seq_seats AS (
SELECT
	r1.seat AS seat_from
	,r2.seat AS seat_to
	,r2.seat - r1.seat + 1 AS seat_cnt
FROM
	seats3 r1
	,seats3 r2
WHERE
	r1.seat < r2.seat
	AND NOT EXISTS (SELECT *
		FROM
			seats3 r3
		WHERE
			r3.status <> '空'
			AND r3.seat BETWEEN r1.seat AND r2.seat))
SELECT
	seat_from || '〜' || seat_to AS seat
	,seat_cnt 
FROM
	seq_seats
WHERE
	seat_cnt = (SELECT MAX(seat_cnt) FROM seq_seats)
;
*/
WITH sequences AS
	(SELECT
		s1.seat AS start_seat
		,s2.seat AS end_seat
		,s2.seat - s1.seat + 1 AS seat_cnt
	FROM
		seats3 s1
		,seats3 s2
	WHERE
		s1.seat <= s2.seat
		AND NOT EXISTS (SELECT *
			FROM
				seats3 s3
			WHERE
				(s3.seat BETWEEN s1.seat AND s2.seat AND s3.status <> '空')
				OR (s3.seat = s2.seat + 1 AND s3.status = '空')
				OR (s3.seat = s1.seat - 1 AND s3.status = '空')))
SELECT
	start_seat
	,'〜'
	,end_seat
	,seat_cnt
FROM
	sequences
WHERE
	seat_cnt = (SELECT MAX(seat_cnt) FROM sequences)
;
