-- Databricks notebook source
SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'canceled'

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue 'delivered'.

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND YEAR(dtPedido) = '2018'

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue 'delivered'.

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'
  AND YEAR(dtPedido) = '2018'

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando os pedidos entregues ou cancelados em 2018.

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE
  descSituacao IN ('shipped', 'canceled')
  AND YEAR(dtPedido) = '2018'

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando os pedidos entregues ou cancelados em 2018.

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE
  descSituacao IN ('shipped', 'canceled')
  AND YEAR(dtPedido) = '2018'
  AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30

-- Leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando os pedidos entregues ou cancelados em 2018.
