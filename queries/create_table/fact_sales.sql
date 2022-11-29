CREATE TABLE IF NOT EXISTS public.fact_sales (
  order_detail_id varchar(30) primary key,
  order_date date,
  product_id int4,
  customer_id int4,
  territory_id int4,
  sales_order_number varchar(30),
  sales_order_line_number int4,
  quantity int4,
  unitprice_rupiah numeric(12),
  totalprice_rupiah numeric(12),
  totalcost_rupiah numeric(12),
  shippingprice_rupiah numeric(12),
  foreign key(product_id) references dim_product(product_id),
  foreign key(customer_id) references dim_customer(customer_id),
  foreign key(territory_id) references dim_territory(territory_id)
);