-- Q: teamsより、隊（team_id）の状態（status）が全て"待機"である隊を検索せよ。（HAVINGとMAXを用いて）
-- A:
SELECT
  team_id
FROM
  teams
GROUP BY
  team_id
HAVING
  MAX(status) = MIN(status)
;