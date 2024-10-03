
  
    

        create or replace transient table analytics.globalmart.raw_products
         as
        (SELECT
    *
FROM
    raw.globalmart.src_product
        );
      
  