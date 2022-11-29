CREATE TABLE IF NOT EXISTS public.dim_customer (
  customer_id int4 primary key,
  geography_id int4,
  customer_name varchar(100),
  birthdate date,
  maritalstatus varchar(5),
  gender varchar(5),
  datefirstpurchase date,
  foreign key(geography_id) references dim_geography(geography_id)
);