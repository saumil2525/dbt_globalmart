
  
    

        create or replace transient table analytics.globalmart.raw_orders
         as
        (SELECT
    *
FROM
    raw.globalmart.src_orders
        );
      
  