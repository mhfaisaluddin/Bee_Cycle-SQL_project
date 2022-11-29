-- Calculate profit margin for each product

SELECT 
  category, 
  sub_category, 
  ROUND(
    (totalprice_rupiah - totalcost_rupiah) * 100 / totalprice_rupiah
    ,2)AS total_margin 
FROM 
  fact_sales LEFT JOIN dim_product USING(product_id)
WHERE DATE_PART('year', order_date) = 2019
GROUP BY 1,2,3
ORDER BY 1,3 DESC