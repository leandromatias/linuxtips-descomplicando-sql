-- Databricks notebook source
SELECT
  *,
  CASE
    WHEN descUF = 'SP' THEN 'paulista'
    WHEN descUF = 'RJ' THEN 'fluminense'
    WHEN descUF = 'PR' THEN 'paranaense'
    ELSE 'outros'
    END AS descNacionalidade
FROM silver_olist.cliente

--leia-se: selecionando toda a tabela, caso 

-- COMMAND ----------

SELECT
  *,
  -- isso é uma coluna nova
  CASE
    WHEN descUF = 'SP' THEN 'paulista'
    WHEN descUF = 'RJ' THEN 'fluminense'
    WHEN descUF = 'PR' THEN 'paranaense'
    ELSE 'outros'
    END AS descNacionalidade,
  -- isso é outra coluna nova
  CASE
    WHEN descCidade = 'sao' THEN 'Tem são no nome'
    ELSE 'Não tem são no nome'
    END AS descCidadeSao
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT
  *,
  -- isso é uma coluna nova
  CASE
    WHEN descUF = 'SP' THEN 'paulista'
    WHEN descUF = 'RJ' THEN 'fluminense'
    WHEN descUF = 'PR' THEN 'paranaense'
    ELSE 'outros'
    END AS descNacionalidade,
  -- isso é outra coluna nova
  CASE
    WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
    ELSE 'Não tem são no nome'
    END AS descCidadeSao
    
FROM silver_olist.cliente

-- COMMAND ----------

SELECT
  *,
  -- isso é uma coluna nova
  CASE
    WHEN descUF = 'SP' THEN 'paulista'
    WHEN descUF = 'RJ' THEN 'fluminense'
    WHEN descUF = 'PR' THEN 'paranaense'
    ELSE 'outros'
    END AS descNacionalidade,
  -- isso é outra coluna nova
  
  CASE
    WHEN descUF IN ('SP', 'MG', 'RJ', 'ES') THEN 'Sudeste'
    END AS descRegiao,
  
  CASE
    WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
    ELSE 'Não tem são no nome'
    END AS descCidadeSao
    
FROM silver_olist.cliente
