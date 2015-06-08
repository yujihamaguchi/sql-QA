-- Q: studentclubにて、１つだけのクラブに所属している学生については、そのクラブＩＤを、
--    複数のクラブを掛け持ちしている学生については、主なクラブＩＤを取得せよ。
-- A
SELECT
  std_id
  ,CASE
    WHEN COUNT(*) = 1 THEN MAX(club_id)
    ELSE MAX(CASE
              WHEN main_club_flg = 'Y' THEN club_id
              ELSE NULL
            END)
  END AS club_id
FROM
  StudentClub r1
GROUP BY
  std_id
ORDER BY 1
;
