-- Q: arraytbl2からvalがすべて1であるkeyを求めよ。
-- A:
SELECT *
FROM
  arraytbl2 r1
WHERE
  NOT EXISTS (SELECT * FROM arraytbl2 r2 WHERE
    r1.key = r2.key
    AND (r2.val <> 1
        OR r2.val IS NULL))
;