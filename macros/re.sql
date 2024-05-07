{% macro myref(sourcename,table ) %}

  {{adapter.dispatch('myref')(sourcename,table) }}
{% endmacro%}

{% macro dremio__myref(sourcename,table ) %}
     {{log('use dremio myref',info=True)}}
     {{sourcename ~ '.' ~ 'public' ~ '.' ~ table}}
{% endmacro%}


{% macro default__myref(sourcename,table ) %}
     {{log('use default myref',info=True)}}
     {{sourcename ~ '.' ~ table}}
{% endmacro%}
