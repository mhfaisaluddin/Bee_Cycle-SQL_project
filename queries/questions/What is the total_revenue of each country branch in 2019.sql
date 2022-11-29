-- What is the total_revenue of each country branch in 2019?

SELECT 
  country, 
  category, 
  COUNT(order_detail_id) AS sales_count,
  SUM(totalprice_rupiah) AS total_revenue
FROM 
  fact_sales 
    LEFT JOIN dim_territory USING(territory_id)
    LEFT JOIN dim_product USING(product_id)
WHERE DATE_PART('year', order_date) = 2019
GROUP BY 1,2
ORDER BY 1,4 DESC