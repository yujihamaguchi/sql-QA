-- Q: arraytblからcol1〜col10までの属性について
--    すべてが1である行
--    、または少なくとも一つの属性値が9である行
--    、またはすべてがNULLである行を抽出せよ。
-- A:
SELECT *
FROM
  arraytbl
WHERE
  1 = ALL (
    col1
    ,col2
    ,col3
    ,col4
    ,col5
    ,col6
    ,col7
    ,col8
    ,col9
    ,col10)
  OR
  9 = ANY (
    col1
    ,col2
    ,col3
    ,col4
    ,col5
    ,col6
    ,col7
    ,col8
    ,col9
    ,col10)
  OR
  COALESCE (
    col1
    ,col2
    ,col3
    ,col4
    ,col5
    ,col6
    ,col7
    ,col8
    ,col9
    ,col10) IS NULL
;