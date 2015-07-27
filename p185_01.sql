-- Q: SeqTblより、歯抜け番号の最小値を出力せよ。
SELECT
  CASE
    WHEN
      1 < MIN(seq) THEN 1
    ELSE
      (SELECT
        MIN(r1.seq + 1)
      FROM
        SeqTbl r1
      WHERE
        NOT EXISTS (SELECT * FROM SeqTbl r2 WHERE
          r1.seq + 1 = r2.seq))
  END
FROM
  SeqTbl
;
