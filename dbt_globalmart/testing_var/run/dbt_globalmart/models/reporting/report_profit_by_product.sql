
  
    

        create or replace transient table analytics.globalmart.report_profit_by_product
         as
        (SELECT
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
        );
      
  