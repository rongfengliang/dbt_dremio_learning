
{% set  location = "{{this}}" %}

 {% set rel = builtins.ref("app") %}
{{log("demo   " ~ rel.dalongapp(), info=True)}}


select * from {{myref('pg','sensor')}}