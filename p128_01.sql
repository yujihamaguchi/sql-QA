-- Q: Extract exception from Tbl_A and Tbl_B. But MySQL does't have any relational caluculate for this (minus or except).
-- A:
SELECT *
FROM
  Tbl_A r1
WHERE
  NOT EXISTS (
    SELECT *
    FROM
      Tbl_B r2
    WHERE
      r1.keycol = r2.keycol
      AND (r1.col_1 = r2.col_1 OR (r1.col_1 IS NULL AND r2.col_1 IS NULL))
      AND (r1.col_2 = r2.col_2 OR (r1.col_2 IS NULL AND r2.col_2 IS NULL))
      AND (r1.col_3 = r2.col_3 OR (r1.col_3 IS NULL AND r2.col_3 IS NULL)))
UNION
SELECT *
FROM
  Tbl_B r1
WHERE
  NOT EXISTS (
    SELECT *
    FROM
      Tbl_A r2
    WHERE
      r1.keycol = r2.keycol
      AND (r1.col_1 = r2.col_1 OR (r1.col_1 IS NULL AND r2.col_1 IS NULL))
      AND (r1.col_2 = r2.col_2 OR (r1.col_2 IS NULL AND r2.col_2 IS NULL))
      AND (r1.col_3 = r2.col_3 OR (r1.col_3 IS NULL AND r2.col_3 IS NULL)))
;
