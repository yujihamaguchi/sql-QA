-- Q: p116のクエリをOVERLAPS関数を用いて書き直せ。
-- A
-- Point: OVERLAPS述語は、一点のみの重なりはOVERLAPと見なさない。
SELECT
  r1.*
FROM
  Reservations r1
WHERE
  EXISTS (SELECT * FROM Reservations r2 WHERE
    r1.reserver <> r2.reserver
    AND (r1.start_date, r1.end_date) OVERLAPS (r2.start_date, r2.end_date))
;
