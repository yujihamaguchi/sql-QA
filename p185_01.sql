-- Q: seqtbl_3より、歯抜け番号の最小値を出力せよ。
SELECT
  CASE
    WHEN
      1 < MIN(seq) THEN 1
    ELSE
      (SELECT
        MIN(r1.seq + 1)
      FROM
        seqtbl_3 r1
      WHERE
        NOT EXISTS (SELECT * FROM seqtbl_3 r2 WHERE
          r1.seq + 1 = r2.seq))
  END
FROM
  seqtbl_3
;