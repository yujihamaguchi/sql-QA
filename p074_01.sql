-- Q: shopitemsから、itemsにあるitemを全て揃えているshopを抽出せよ。
-- A
SELECT
  r1.shop
FROM
  ShopItems r1
  ,Items r2
WHERE
  r1.item = r2.item
GROUP BY
  r1.shop
HAVING
  COUNT(*) = (SELECT COUNT(*) FROM Items)
;
