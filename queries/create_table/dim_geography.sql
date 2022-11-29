CREATE TABLE IF NOT EXISTS public.dim_geography (
  geography_id int4 primary key,
  city varchar(50),
  state_province_code varchar(5),
  state_province_name varchar(50),
  country_region_code varchar(5),
  english_country_region_name varchar(50),
  postal_code varchar(10)
);SELECT * FROM demo;