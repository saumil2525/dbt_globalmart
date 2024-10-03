{%- macro limit_data_in_dev(column_name, delta_days=0) -%}
    {{ log('target: ' ~ target.name, info=True) }}
    {%- if target.name == 'dev' -%}
        where {{ column_name }} >= dateadd('day', -{{ delta_days }}, {{column_name}})
    {%- endif -%}

{%- endmacro -%}