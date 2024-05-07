{% snapshot sensor_snapshot %}
    {{
        config(
          unique_key='id',
          strategy='check',
          check_cols='all',
          target_schema='dbtv4',
          target_database='s3'
        )
    }}
    select * from {{myref('pg','sensor')}}
{% endsnapshot %}