-- Q: sometableの主キーaとbを一つのupdate文で入れ替えよ。
--    * This query will cause an error in MySQL or PostgresSQL.
-- A
UPDATE SomeTable
SET
	p_key = CASE
						WHEN p_key = 'a' THEN 'b'
						WHEN p_key = 'b' THEN 'a'
						ELSE p_key
					END
;
