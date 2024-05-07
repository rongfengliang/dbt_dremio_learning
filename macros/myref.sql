{%- macro refv1(schema,table,branch ) -%}
    {% if schema %}
        {%- set relation = api.Relation.create(schema=schema,identifier=table)  -%}
        {{return (relation ~ ' AT ' ~  'branch ' ~ branch)  }}
    {% else %}
        {{return (table ~ ' AT ' ~  'branch ' ~ branch)  }}
    {% endif %}
{%- endmacro %}