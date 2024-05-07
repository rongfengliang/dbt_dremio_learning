{% macro demoapp(name,version) %}
   {%  if version =='v1' %}
       {{return("appdemo") }}
    {% else %}
        {{return("dalongdemo")}}
    {% endif %}
    {{name }} --  {{version}}
{% endmacro  %}