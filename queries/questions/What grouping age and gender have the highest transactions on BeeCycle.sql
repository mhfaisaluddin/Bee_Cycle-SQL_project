-- Query to see the distribution of customers by gender and age.
-- What grouping age and gender have the highest transactions on BeeCycle?

WITH tab1 AS(
  SELECT customer_id, gender, birthdate,
    CASE WHEN DATE_PART('year', current_date) - DATE_PART('year', birthdate) <= 20 THEN 'Group <=20'
         WHEN DATE_PART('year', current_date) - DATE_PART('year', birthdate) BETWEEN 21 AND 40 THEN 'Group 21-40'
         WHEN DATE_PART('year', current_date) - DATE_PART('year', birthdate) BETWEEN 41 AND 60 THEN 'Group 41-60'
    ELSE 'Group >60' END AS grouping_age,
  COUNT(DISTINCT order_detail_id) AS sales
  FROM fact_sales LEFT JOIN dim_customer USING(customer_id) 
  GROUP BY 1,2,3
)

SELECT grouping_age, gender, SUM(sales) AS transaction
FROM tab1
group by 1,2