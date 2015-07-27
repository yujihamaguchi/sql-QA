-- Q: Meetingsより各meetingに出席していないpersonを出力せよ。（EXISTS述語を用いて）
-- A
/* リレーショナル代数版
SELECT
  r1.meeting
  ,r2.person
FROM
  Meetings r1
CROSS JOIN
  Meetings r2
MINUS
SELECT
 *
FROM
  Meetings
;
*/
SELECT
  DISTINCT
  r1.meeting
  ,r2.person
FROM
  Meetings r1
CROSS JOIN
  Meetings r2
WHERE
  NOT EXISTS (SELECT * FROM Meetings r3 WHERE
    r1.meeting = r3.meeting
    AND r2.person = r3.person)
ORDER BY 
  1,2
;
