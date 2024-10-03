SELECT
    productid,
    productname,
    category,
    subcategory,
    SUM(orderprofit) AS profit
FROM
    analytics.globalmart.stg_orders
GROUP BY
    productid,
    productname,
    category,
    subcategory