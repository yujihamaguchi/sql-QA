-- Q: SupPartsより扱うpartがすべて同じsupのペアを求めよ。
-- A
/* Using GROUP BY and HAVING clause.
SELECT
  r1.sup
  ,r2.sup
FROM
  SupParts r1
CROSS JOIN
  SupParts r2
ON
  r1.sup < r2.sup
GROUP BY
  r1.sup
  ,r2.sup
HAVING
  COUNT(DISTINCT r1.part) = SUM(CASE WHEN r1.part = r2.part THEN 1 ELSE 0 END)
  AND COUNT(DISTINCT r2.part) = SUM(CASE WHEN r1.part = r2.part THEN 1 ELSE 0 END)
ORDER BY
  1,2
; 
*/
/* Using Relational algebra MINUS.
SELECT
  r1.sup
  ,r2.sup
FROM
  (SELECT DISTINCT sup FROM SupParts) r1
  ,(SELECT DISTINCT sup FROM SupParts) r2
WHERE
  r1.sup < r2.sup
  AND NOT EXISTS (
    SELECT part FROM SupParts r3 WHERE r3.sup = r1.sup
    MINUS
    SELECT part FROM SupParts r4 WHERE r4.sup = r2.sup)
  AND NOT EXISTS (
    SELECT part FROM SupParts r3 WHERE r3.sup = r2.sup
    MINUS
    SELECT part FROM SupParts r4 WHERE r4.sup = r1.sup)
;
*/
/* Using Relational algebra MINUS and UNION.
SELECT
	DISTINCT
	r1.sup
	,r2.sup
FROM
	SupParts r1
	,SupParts r2
WHERE
	r1.sup < r2.sup
	AND NOT EXISTS(
		(SELECT part FROM SupParts r3 WHERE r1.sup = r3.sup
		MINUS
		SELECT part FROM SupParts r3 WHERE r2.sup = r3.sup)
		UNION
		(SELECT part FROM SupParts r3 WHERE r2.sup = r3.sup
		MINUS
		SELECT part FROM SupParts r3 WHERE r1.sup = r3.sup))
;
*/
/* Not using relational algebra. (This works on MySQL). */
SELECT
  DISTINCT
  r1.sup
  ,r2.sup
FROM
  SupParts r1
CROSS JOIN
  SupParts r2
ON
  r1.sup < r2.sup
  AND NOT EXISTS (SELECT *
    FROM
      SupParts r3
    WHERE
      r1.sup = r3.sup
      AND NOT EXISTS (SELECT *
        FROM
          SupParts r4
        WHERE
          r2.sup = r4.sup
          AND r3.part = r4.part))
  AND NOT EXISTS (SELECT *
    FROM
      SupParts r3
    WHERE
      r2.sup = r3.sup
      AND NOT EXISTS (SELECT *
        FROM
          SupParts r4
        WHERE
          r1.sup = r4.sup
          AND r3.part = r4.part))
ORDER BY
  1,2
;
