-- Q: Seats2からn席の連続した空席を抽出せよ。（row_idが違えば連続していない）
/*
VAR head_cnt NUMBER
EXEC :head_cnt := &head_cnt;
SELECT
	r1.seat || '〜' || r2.seat
FROM
	Seats2 r1
	,Seats2 r2
WHERE
	r1.seat < r2.seat
	AND NOT EXISTS (SELECT *
		FROM
			Seats2 r3
		WHERE
			r3.status <> '空'
			AND r3.seat BETWEEN r1.seat AND r2.seat)
	AND r2.seat - r1.seat + 1 = :head_cnt
	AND EXISTS (SELECT *
		FROM
			Seats2 r3
		WHERE
			r3.seat BETWEEN r1.seat AND r2.seat
		HAVING
			COUNT(DISTINCT r3.row_id) = 1)
;
*/
VARIABLE head_cnt NUMBER;
EXECUTE :head_cnt := &head_cnt;
SELECT
  r1.seat
  ,r2.seat
FROM
  Seats2 r1
  ,Seats2 r2
WHERE
  r1.seat = r2.seat - (:head_cnt - 1)
  AND NOT EXISTS (SELECT *
    FROM
      Seats2 r3
    WHERE
      r3.seat BETWEEN r1.seat AND r2.seat
      AND (r3.status <> '空'
          OR (r3.row_id <> r1.row_id
              OR r3.row_id <> r2.row_id)))
;
