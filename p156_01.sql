-- Q: Arraytbl2からvalがすべて1であるkey_を求めよ。
-- A:
SELECT *
FROM
  ArrayTbl2 r1
WHERE
  NOT EXISTS (SELECT * FROM ArrayTbl2 r2 WHERE
    r1.key_ = r2.key_
    AND (r2.val <> 1
        OR r2.val IS NULL))
;
