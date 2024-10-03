SELECT
    *
FROM
    {{ source('globalmart', 'src_customers') }}
