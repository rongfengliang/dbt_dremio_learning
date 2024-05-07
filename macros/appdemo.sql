{%  macro demo(name,age) %}
  {{adapter.dispatch('app')(name,age) }}
{% endmacro %}


{% macro default__app(name,age) %}

  {{name ~ age }}

{% endmacro %}


{%macro dremio__app(name,age) %}

  {{name ~ age  ~ "mydbt" }}

{% endmacro %}}