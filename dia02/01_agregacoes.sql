-- Databricks notebook source
SELECT
  count(*) AS nrLinhasNaoNulas -- contagem de todas as linhas NÃO NULAS da tabela
FROM
  silver_olist.cliente


-- COMMAND ----------

SELECT
  count(*) AS nrLinhasNaoNulas, -- contagem de todas as linhas NÃO NULAS da tabela
  COUNT(idCliente) AS nrIdClienteNaoNulo, -- id de clientes não nulos
FROM
  silver_olist.cliente


-- COMMAND ----------

SELECT
  count(*) AS nrLinhasNaoNulas, -- contagem de TODAS as linhas NÃO NULAS da tabela
  COUNT(idCliente) AS nrIdClienteNaoNulo, -- contagem de valores não nulos de uma coluna
  COUNT(distinct idCliente) AS nrIdClienteDistintos -- contagem de valores não nulos distintos
FROM
  silver_olist.cliente


-- COMMAND ----------


SELECT
  COUNT(*) AS nrLinhasNaoNulas, -- contagem de TODAS as linhas NÃO NULAS da tabela
  COUNT(idCliente) AS nrIdClienteNaoNulo, -- contagem de valores não nulos de uma coluna
  COUNT(distinct idCliente) AS nrIdClienteDistintos, -- contagem de valores não nulos distintos da coluna
  
  COUNT(idClienteUnico) AS nrIdClienteUnicoDistintos, -- conta id de clientes únicos
  COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes únicos distintos
FROM
  silver_olist.cliente


-- COMMAND ----------

-- WHERE é o primeiro <filtro>, depois vem a contagem
SELECT
  COUNT(*) AS qtLinhas,
  COUNT(DISTINCT idCliente) AS qtClientes,
  COUNT(DISTINCT idClienteUnico) AS qtClientesUnicos
FROM
  silver_olist.cliente
WHERE
  descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
  ROUND(AVG(vlPreco), 2) AS avgPreco, -- media da coluna vlPreco
  ROUND(PERCENTILE(vlPreco, 0.25), 2) AS 25Preco,
  PERCENTILE(vlPreco, 0.5) AS medianPreco, -- mediana da coluna vlPreco
  INT(PERCENTILE(vlPreco, 0.75)) AS 75Preco,
  MAX(vlPreco) as maxPreco, -- máximo da coluna vlPreco
  MIN(vlPreco) as minPreco, -- mínimo da coluna vlPreco
  AVG(vlFrete) AS avgFrete, -- media da coluna vlFrete
  MAX(vlFrete) AS maxFrete, -- máximo da coluna vlFrete
  MIN(vlFrete) AS minFrete -- mínimo da coluna vlFrete
FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SC'
