SELECT
    customerid,
    SEGMENT,
    country,
    SUM(orderprofit) AS profit
FROM
    {{ ref('stg_orders') }}
GROUP BY
    customerid,
    SEGMENT,
    country
