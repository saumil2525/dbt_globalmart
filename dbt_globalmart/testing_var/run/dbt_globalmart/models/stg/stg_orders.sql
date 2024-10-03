
  create or replace   view analytics.globalmart.stg_orders
  
   as (
    SELECT
    md5(cast(coalesce(cast(o.orderid as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(c.customerid as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(p.productid as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as sk_orders,
    --from raw_orders
    orderid,
    orderdate,
    shipdate,
    shipmode,
    o.customerid,
    o.productid,
    ordersellingprice,
    ordercostprice,
    --from raw_customer
    customername,
    SEGMENT,
    country,
    --from raw_product
    category,
    productname,
    subcategory,
    ordersellingprice - ordercostprice AS orderprofit,
    
    case
        when ordercostprice != 0 and ordersellingprice is not null then
            (ordersellingprice - ordercostprice) / ordercostprice
        else null
    end
 as markup
FROM
    analytics.globalmart.raw_orders AS o
    LEFT JOIN analytics.globalmart.raw_customers AS C
    ON o.customerid = C.customerid
    LEFT JOIN analytics.globalmart.raw_products AS p
    ON o.productid = p.productid
  );

