-- Q: Materialsより、資材（material）がだぶついている（重複のある）拠点（center）を抽出せよ。
-- A:
SELECT
  center
FROM
  Materials
GROUP BY
  center
HAVING
  COUNT(DISTINCT material) < COUNT(material)
;
