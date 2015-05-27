-- Q: material2より、資材（material）と原産国（orgland）が両方ダブっている拠点（center）を抽出せよ。
-- A:
SELECT
  center
FROM
  materials2
GROUP BY
  center
HAVING
  COUNT(DISTINCT material || '|' || orgland) < COUNT(*)
;
