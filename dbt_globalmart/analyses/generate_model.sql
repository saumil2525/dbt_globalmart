{{ codegen.generate_model_yaml(
    model_names=['raw_customers']
) }}

{# dbt run-operation generate_model_yaml --args '{"model_names": ["raw_customers", "raw_products", "raw_orders"]}' #}