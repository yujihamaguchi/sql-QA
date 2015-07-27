-- Q: Materialsより、資材（material）がだぶついている（重複のある）拠点（center）と資材を抽出せよ。
-- A:
SELECT
  center
  ,material
FROM
  Materials r1
WHERE
  EXISTS (SELECT * FROM Materials r2 WHERE
    r1.center = r2.center
    AND r1.receive_date <> r2.receive_date
    AND r1.material = r2.material)
;
