
  
    

        create or replace transient table analytics.globalmart.raw_customers
         as
        (SELECT
    *
FROM
    raw.globalmart.src_customers
        );
      
  