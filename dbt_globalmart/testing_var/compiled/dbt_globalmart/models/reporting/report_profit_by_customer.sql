SELECT
    customerid,
    SEGMENT,
    country,
    SUM(orderprofit) AS profit
FROM
    analytics.globalmart.stg_orders
GROUP BY
    customerid,
    SEGMENT,
    country