{{
config(
    materialized='table',
    limit = 200,
    severity = "warn",
    store_failures = true,
    where = "code > 0"
)
}}


select * from {{myref('pg','sensor')}}