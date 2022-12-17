-- Databricks notebook source
WITH tb_vendas_vendedores AS (
  SElECT idVendedor,
         COUNT(*) AS qtVendas
  FROM silver_olist.item_pedido
  GROUP BY idVendedor
  ORDER BY qtVendas DESC
),

tb_row_number AS (
  select T1.*,
         T2.descUF,
         ROW_NUMBER() OVER (PARTITION BY T2.descUF ORDER BY qtVendas DESC) AS RN
  from tb_vendas_vendedores AS T1
  LEFT JOIN silver_olist.vendedor AS T2
  ON T1.idVendedor = T2.idVendedor
  ORDER BY descUF, qtVendas DESC
)

SELECT *
FROM tb_row_number
WHERE RN <= 10

-- COMMAND ----------

-- qualify

WITH tb_vendas_vendedores AS (
  SElECT idVendedor,
         COUNT(*) AS qtVendas
  FROM silver_olist.item_pedido
  GROUP BY idVendedor
  ORDER BY qtVendas DESC
),

tb_row_number AS (
  select T1.*,
         T2.descUF,
         ROW_NUMBER() OVER (PARTITION BY T2.descUF ORDER BY qtVendas DESC) AS RN
  from tb_vendas_vendedores AS T1
  LEFT JOIN silver_olist.vendedor AS T2
  ON T1.idVendedor = T2.idVendedor
  QUALIFY RN <= 10 -- DOIDO, ISSO AQUI É PICA
  ORDER BY descUF, qtVendas DESC
)

SELECT *
FROM tb_row_number

-- COMMAND ----------

-- ORDEM DE FILTROS EM SQL - DEPENDE DO ENGINE

SELECT *

FROM A

WHERE -- FILTRA NA FONTE

QUALIFY -- FILTRA WINDOW FUNCTION

HAVING -- FILTRA GROUP BY
