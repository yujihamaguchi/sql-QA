SELECT
  std_id
  ,CASE
    WHEN COUNT(DISTINCT club_id) = 1 THEN MAX(club_id)
    ELSE MAX(CASE WHEN main_club_flg = 'Y' THEN club_id ELSE null END)
  END AS club_id
FROM
  StudentClub
GROUP BY
  std_id
ORDER BY
  std_id
;
