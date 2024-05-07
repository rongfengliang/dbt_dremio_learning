{{config(materialized='table')}}

select * from {{myref('pg','sensor')}}