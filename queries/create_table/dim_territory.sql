CREATE TABLE IF NOT EXISTS public.dim_territory (
  territory_id int4 primary key,
  region varchar(30),
  country varchar(30),
  "groups" varchar(30)
);