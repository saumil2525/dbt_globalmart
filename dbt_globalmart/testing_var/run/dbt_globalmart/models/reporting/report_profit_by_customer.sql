
  
    

        create or replace transient table analytics.globalmart.report_profit_by_customer
         as
        (SELECT
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
        );
      
  