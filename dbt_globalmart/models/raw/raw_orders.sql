SELECT
    *
FROM
    {{ source('globalmart', 'src_orders') }}