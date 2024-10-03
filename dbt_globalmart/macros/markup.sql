{# {% macro markup(sellingprice, costprice) %}

    {% if {{ costprice }} != 0 and {{ sellingprice }} is not null %}
        ({{ sellingprice }} - {{costprice }}) / {{ costprice }}
    {% else %}
        null
    {% endif %}

{% endmacro %} #}

{% macro calculate_margin(ordersellingprice, ordercostprice) %}
    case
        when {{ ordercostprice }} != 0 and {{ ordersellingprice }} is not null then
            ({{ ordersellingprice }} - {{ ordercostprice }}) / {{ ordercostprice }}
        else null
    end
{% endmacro %}