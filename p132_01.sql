-- Q: suppartsより扱うpartがすべて同じsupのペアを求めよ。
-- A
/*
SELECT
  r1.sup
  ,r2.sup
FROM
  (SELECT DISTINCT sup FROM supparts) r1
  ,(SELECT DISTINCT sup FROM supparts) r2
WHERE
  r1.sup < r2.sup
  AND NOT EXISTS (
    SELECT part FROM supparts r3 WHERE r3.sup = r1.sup
    MINUS
    SELECT part FROM supparts r4 WHERE r4.sup = r2.sup)
  AND NOT EXISTS (
    SELECT part FROM supparts r3 WHERE r3.sup = r2.sup
    MINUS
    SELECT part FROM supparts r4 WHERE r4.sup = r1.sup)
;
*/
SELECT
	DISTINCT
	r1.sup
	,r2.sup
FROM
	supparts r1
	,supparts r2
WHERE
	r1.sup < r2.sup
	AND NOT EXISTS(
		(SELECT part FROM supparts r3 WHERE r1.sup = r3.sup
		MINUS
		SELECT part FROM supparts r3 WHERE r2.sup = r3.sup)
		UNION
		(SELECT part FROM supparts r3 WHERE r2.sup = r3.sup
		MINUS
		SELECT part FROM supparts r3 WHERE r1.sup = r3.sup))
;