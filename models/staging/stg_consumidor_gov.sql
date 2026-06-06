{{ config(materialized='view') }}

select

    gestor,
    canal_de_origem,
    regiao,
    uf,
    cidade,
    sexo,
    faixa_etaria,

    cast(ano_abertura as int) as ano_abertura,
    cast(mes_abertura as int) as mes_abertura,

    data_abertura,
    data_resposta,
    data_analise,
    data_recusa,
    data_finalizacao,

    prazo_resposta,
    prazo_analise_gestor,
    tempo_resposta,

    nome_fantasia,
    segmento_de_mercado,
    area,

    assunto,
    grupo_problema,
    problema,

    como_comprou_contratou,
    procurou_empresa,
    respondida,
    situacao,

    avaliacao_reclamacao,
    nota_do_consumidor,
    analise_da_recusa

from {{ source('bronze', 'raw_consumidor_gov') }}