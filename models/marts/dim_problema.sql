{{ config(materialized='table') }}

select distinct

    grupo_problema,
    problema,
    assunto

from {{ ref('stg_consumidor_gov') }}