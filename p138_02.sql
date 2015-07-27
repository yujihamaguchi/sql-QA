-- Q: empskillsのempの内、skillsのskillを過不足なく備えているempを抽出せよ。（厳密な除算）
-- A
/* Using relational algebra(MINUS)
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

/* Using relational algebra(MINUS, UNION)
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
*/

-- Not Using relational algebra but using relational division(working on MySQL)
SELECT
  DISTINCT
  emp
FROM
  EmpSkills r1
WHERE
  NOT EXISTS(SELECT *
    FROM
      Skills r2
    WHERE
      NOT EXISTS(SELECT *
        FROM
          EmpSkills r3
        WHERE
          r1.emp = r3.emp
          AND r2.skill = r3.skill))
  AND NOT EXISTS(SELECT *
    FROM
      EmpSkills r2
    WHERE
      r1.emp = r2.emp
      AND NOT EXISTS(SELECT *
        FROM
          Skills r3
        WHERE
          r2.skill = r3.skill))
;

