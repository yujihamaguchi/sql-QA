SELECT
  _key
  ,CASE
    WHEN x > y AND x > z THEN x
    WHEN y > z THEN y
    ELSE z
  END AS greatest
FROM
  Greatests
ORDER BY
  _key
;
