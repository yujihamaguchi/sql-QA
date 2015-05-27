-- Q: projectsからstep_nbrが1まで完了しているproject_idを出力せよ。
--    （「プロジェクト内の全ての行について、工程番号が1以下ならば完了であり、1より大きければ待機である」という全称命題を用いて書け）
-- A
SELECT
	DISTINCT
	project_id
FROM
  projects r1
WHERE
  NOT EXISTS (SELECT * FROM projects r2 WHERE
    r1.project_id = r2.project_id
    AND status <> CASE WHEN step_nbr <= 1 THEN '完了' ELSE '待機' END)
;
/*
SELECT
	DISTINCT
	project_id
FROM
	projects r1
WHERE
	NOT EXISTS (SELECT *
		FROM
			projects r2
		WHERE
			r1.project_id = r2.project_id
			AND (r2.step_nbr > 1 AND r2.status = '完了'
					OR r2.step_nbr <= 1 AND r2.status = '待機'))
;
*/
