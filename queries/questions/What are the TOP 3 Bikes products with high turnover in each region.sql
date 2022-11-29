-- What are the TOP 3 Bikes products with high turnover in each region? 

WITH top3 AS(
  SELECT 
    region,
    product_name,
    SUM(totalprice_rupiah) AS turnover,
    ROW_NUMBER() OVER(PARTITION BY region ORDER BY SUM(totalprice_rupiah) DESC) 
      AS ranking
  FROM fact_sales 
    LEFT JOIN dim_territory USING(territory_id)
    INNER JOIN dim_product USING(product_id)
  WHERE category = 'Bikes'
  GROUP BY 1, 2
)

SELECT *
FROM top3
WHERE ranking <=3