-- Q: Tbl_AとTbl_Bの集合の相等性を調べるクエリを書け。
-- A
/* Using relational algebra(MINUS).
SELECT
  CASE
    WHEN
      EXISTS (SELECT * FROM Tbl_A MINUS SELECT * FROM Tbl_B)
      OR EXISTS (SELECT * FROM Tbl_B MINUS SELECT * FROM Tbl_A) THEN '等しくない'
    ELSE
      '等しい'
  END AS result
FROM
  dual
;
*/

/* Using relational algebra(MINUS and UNION).
SELECT
	CASE
		WHEN NOT EXISTS (
			(SELECT * FROM Tbl_A
			MINUS
			SELECT * FROM Tbl_B)
			UNION
			(SELECT * FROM Tbl_B
			MINUS
			SELECT * FROM Tbl_A)) THEN 'equal'
		ELSE 'not equal!'
	END AS result
FROM
	dual
;
*/

-- Not using relational algebra(work on MySQL also).
SELECT
  CASE 
    WHEN
      EXISTS (SELECT *
        FROM
          Tbl_A r1
        INNER JOIN
          Tbl_B r2
        ON
          r1.keycol = r2.keycol
          AND ((r1.col_1 IS NULL AND r2.col_1 IS NOT NULL OR r1.col_1 IS NOT NULL AND r2.col_1 IS NULL OR r1.col_1 <> r2.col_1)
              OR (r1.col_2 IS NULL AND r2.col_2 IS NOT NULL OR r1.col_2 IS NOT NULL AND r2.col_2 IS NULL OR r1.col_2 <> r2.col_2)
              OR (r1.col_3 IS NULL AND r2.col_3 IS NOT NULL OR r1.col_3 IS NOT NULL AND r2.col_3 IS NULL OR r1.col_3 <> r2.col_3)))
    THEN 'Not equal'
    ELSE 'Equal'
  END AS result
FROM
  dual
;
