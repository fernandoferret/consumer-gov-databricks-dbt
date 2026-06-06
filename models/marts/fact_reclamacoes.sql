{{ config(materialized='table') }}

select

    nome_fantasia,
    grupo_problema,
    problema,

    uf,
    cidade,

    data_abertura,
    ano_abertura,
    mes_abertura,

    tempo_resposta,
    prazo_resposta,

    nota_do_consumidor,

    respondida,
    situacao,
    avaliacao_reclamacao

from {{ ref('stg_consumidor_gov') }}