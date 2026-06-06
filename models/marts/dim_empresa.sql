{{ config(materialized='table') }}

select distinct

    nome_fantasia,
    segmento_de_mercado,
    area,
    uf

from {{ ref('stg_consumidor_gov') }}