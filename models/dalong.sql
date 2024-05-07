

{{
    config(
        branch='prod',
        schema = "dbtv4",
        table = "dalongdemoapp"
    )
}}


select * from {{source("public","sensor")}}