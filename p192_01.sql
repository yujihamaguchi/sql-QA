-- Q: material2より、資材（material）と原産国（orgland）が両方ダブっている拠点（center）を抽出せよ。
-- A:
SET sql_mode = 'PIPES_AS_CONCAT';
SELECT
  center
FROM
  Materials
GROUP BY
  center
HAVING
  COUNT(DISTINCT material || '|' || orgland) < COUNT(*)
;
