-- Q: tbl_aとtbl_bの相違する行を出力せよ。
-- A
(SELECT * FROM tbl_a
MINUS
SELECT * FROM tbl_b)
UNION 
(SELECT * FROM tbl_b
MINUS
SELECT * FROM tbl_a)
;