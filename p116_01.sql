-- Q: reservationsについて、期間がオーバーラップしているレコードを求めよ。
-- A
SELECT
  r1.*
FROM
  reservations r1
WHERE
  EXISTS (SELECT * FROM reservations r2 WHERE
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
	reservations r1
WHERE
	EXISTS (SELECT *
		FROM
			reservations r2
		WHERE
			r1.reserver <> r2.reserver
			AND (r1.start_date BETWEEN r2.start_date AND r2.end_date
					OR r1.end_date BETWEEN r2.start_date AND r2.end_date
					OR (r1.start_date < r2.start_date AND r1.end_date > r2.end_date)))
;
*/