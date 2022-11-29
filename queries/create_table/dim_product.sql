CREATE TABLE IF NOT EXISTS public.dim_product (
  product_id int4 primary key,
  product_name varchar(100),
  model_name varchar(100),
  color varchar(30),
  size_range varchar(30),
  "cost" numeric(10),
  normal_price numeric(100),
  sub_category varchar(100),
  category varchar(100)
);