
{% macro column_usage(args) %}

-- String column
{%- set string_column = api.Column('name', 'varchar', char_size=255) %}

-- Return true if the column is a string
{{ log("is string: " ~ string_column.is_string(), info=true) }}

-- Return true if the column is a numeric
{{ string_column.is_numeric() }}

-- Return true if the column is a number
{{ string_column.is_number() }}

-- Return true if the column is an integer
{{ string_column.is_integer() }}

-- Return true if the column is a float
{{ string_column.is_float() }}

-- Numeric column
{%- set numeric_column = api.Column('distance_traveled', 'numeric', numeric_precision=12, numeric_scale=4) %}

-- Return true if the column is a string
{{ numeric_column.is_string() }}

-- Return true if the column is a numeric
{{ numeric_column.is_numeric() }}

-- Return true if the column is a number
{{ numeric_column.is_number() }}

-- Return true if the column is an integer
{{ numeric_column.is_integer() }}

-- Return true if the column is a float
{{ numeric_column.is_float() }}

-- Static methods

-- Return the string data type for this database adapter with a given size
{{ api.Column.string_type(255) }}

-- Return the numeric data type for this database adapter with a given precision and scale
{{ api.Column.numeric_type('numeric', 12, 4) }}

{% endmacro %}
