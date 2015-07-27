-- Q: shopitemsにてitemsの商品の在庫状況を一覧せよ。出力情報は{店舗、現存在庫数、足りない商品の数}
-- A
SELECT
  shop
  ,COUNT(r1.item) AS zaiko
  ,(SELECT DISTINCT COUNT(item) FROM Items) - COUNT(r1.item) AS fusoku
FROM
  ShopItems r1
  ,Items r2
WHERE
  r1.item = r2.item
GROUP BY
  shop
;
