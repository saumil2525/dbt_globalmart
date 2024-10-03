{% macro toyml_macro() %}

    {% set event_type = var("event_type") %}
    {% set my_dict = {"abc": 123} %}
    {% set my_yaml_string = toyaml(my_dict) %}
    {% do log(my_yaml_string, info=true) %}
    {% do log( event_type, info=true) %}

{% endmacro %}

