{%- macro refv2(schema,table,branch ) -%}
    {%- set relation = api.Relation.create(schema=schema,identifier=table)  -%}
    {{return (relation ~ ' AT ' ~  'branch ' ~ branch)  }}
{%- endmacro %}