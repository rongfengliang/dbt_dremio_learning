{%- macro source(source_name, table_name) -%}
  {%- set relation = builtins.source(source_name, table_name) -%}
  {{log('user my source relation default' ~ relation, info=True)}}

  {%- if execute -%}
    {{log("my source model config " ~ model.config,info=True)}}
    {%- set source = graph.sources.values() | selectattr("source_name", "equalto", source_name) | selectattr("name", "equalto", table_name) | list | first -%}
     {{log("my source model " ~ tojson(source),info=True)}}
    {% set my_source = source.config %}
    {%- set relation2 = api.Relation.create(schema=my_source.schema, identifier=my_source.table) -%}
    {{log('user my source relation2 ' ~ relation2, info=True)}}
    {% if my_source.branch %} 

        {{ return (relation2 ~ ' AT ' ~ ' branch ' ~ my_source.branch) }}
  
    {% else %}
        {{ return (relation) }}

    {% endif  %}
    
  {%- else -%}
    {{ return (relation) }}
  {%- endif -%}
{%- endmacro -%}