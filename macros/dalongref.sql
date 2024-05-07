{% macro ref(model_name, v=None)%}

    {%- set relation = builtins.ref(model_name, v=v) -%}

    {{log('user my ref' ~ relation , info=True)}}

    {% if execute %}

        {{log("my ref model " ~ model.config,info=True)}}
        {% set my_source = model.config %}
        {%- set relation2 = api.Relation.create(schema=my_source.schema, identifier=my_source.table) -%}
        {{log('user my ref ' ~ relation2, info=True)}}
        {% if my_source.branch %}
           {{ return (relation2 ~ ' AT ' ~ ' branch ' ~ my_source.branch) }}
        {% else %}
          {{ return (relation2) }}
        {% endif %}
    {% endif %}
 

    {{return (relation)}}
{% endmacro %}