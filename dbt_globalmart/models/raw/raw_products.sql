SELECT
    *
FROM
    {{ source('globalmart', 'src_product') }}