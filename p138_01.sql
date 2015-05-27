-- Q: tbl_aとtbl_bの集合の相等性を調べるクエリを書け。
-- A
SELECT
  CASE
    WHEN
      EXISTS (SELECT * FROM tbl_a MINUS SELECT * FROM tbl_b)
      OR EXISTS (SELECT * FROM tbl_b MINUS SELECT * FROM tbl_a) THEN '等しくない'
    ELSE
      '等しい'
  END AS result
FROM
  dual
;
/*
SELECT
	CASE
		WHEN NOT EXISTS (
			(SELECT * FROM tbl_a
			MINUS
			SELECT * FROM tbl_b)
			UNION
			(SELECT * FROM tbl_b
			MINUS
			SELECT * FROM tbl_a)) THEN 'equal'
		ELSE 'not equal!'
	END AS result
FROM
	dual
;
*/
