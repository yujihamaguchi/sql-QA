-- Q: Reservationsについて、期間がオーバーラップしているレコードを求めよ。
-- A
SELECT
  r1.*
FROM
  Reservations r1
WHERE
  EXISTS (SELECT * FROM Reservations r2 WHERE
    r1.reserver <> r2.reserver
    AND (
          (r1.start_date BETWEEN r2.start_date AND r2.end_date
          OR r1.end_date BETWEEN r2.start_date AND r2.end_date)
        OR
          (r2.start_date BETWEEN r1.start_date AND r1.end_date
          OR r2.end_date BETWEEN r1.start_date AND r1.end_date)
      )
    )
;
/*
SELECT *
FROM
	Reservations r1
WHERE
	EXISTS (SELECT *
		FROM
			Reservations r2
		WHERE
			r1.reserver <> r2.reserver
			AND (r1.start_date BETWEEN r2.start_date AND r2.end_date
					OR r1.end_date BETWEEN r2.start_date AND r2.end_date
					OR (r1.start_date < r2.start_date AND r1.end_date > r2.end_date)))
;
*/
