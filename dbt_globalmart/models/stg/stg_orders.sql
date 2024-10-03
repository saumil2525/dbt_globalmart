SELECT
    {{ dbt_utils.generate_surrogate_key(['o.orderid', 'c.customerid', 'p.productid']) }} as sk_orders,
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
    {{ calculate_margin('ordersellingprice', 'ordercostprice') }} as markup
FROM
    {{ ref('raw_orders') }} AS o
    LEFT JOIN {{ ref('raw_customers') }} AS C
    ON o.customerid = C.customerid
    LEFT JOIN {{ ref('raw_products') }} AS p
    ON o.productid = p.productid
