
{% set relation = refv2("dbtv4.biz","dalongdemoapp","prod") %}

{{log(relation,info=True)}}


select * from  {{relation}};
