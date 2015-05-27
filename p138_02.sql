-- Q: empskillsのempの内、skillsのskillを過不足なく備えているempを抽出せよ。（厳密な除算）
-- A
/*
SELECT
  DISTINCT
  emp
FROM
  empskills r1
WHERE
  NOT EXISTS (
    SELECT skill FROM skills
    MINUS
    SELECT skill FROM empskills r2 WHERE r2.emp = r1.emp)
  AND NOT EXISTS (
    SELECT skill FROM empskills r2 WHERE r2.emp = r1.emp
    MINUS
    SELECT skill FROM skills)
;
*/
SELECT
	DISTINCT
	emp
FROM
	empskills r1
WHERE
	NOT EXISTS (
		(SELECT skill FROM skills
		MINUS
		SELECT skill FROM empskills r2 WHERE r1.emp = r2.emp)
		UNION
		(SELECT skill FROM empskills r2 WHERE r1.emp = r2.emp
		MINUS
		SELECT skill FROM skills))
;