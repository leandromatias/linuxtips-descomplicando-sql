-- Databricks notebook source
-- 01 Lista de pedidos com mais de um item

SELECT *
FROM silver_olist.item_pedido
WHERE idPedidoItem > 1

-- COMMAND ----------

-- 02 Lista de pedidos que o frete é mais caro que o item

SELECT *
FROM silver_olist.item_pedido
WHERE vlFrete > vlPreco

-- COMMAND ----------

-- 03 Lista de pedidos que ainda não foram enviados

SELECT *
FROM silver_olist.pedido
WHERE descSituacao NOT IN ('shipped', 'delivered')

-- COMMAND ----------

-- 04 Lista de pedidos que foram entregues com atraso



-- COMMAND ----------

-- 05 Lista de pedidos que foram entregues com 2 dias de antecedência



-- COMMAND ----------

-- 06 Lista de pedidos feitos em dezembro de 2017 e entregues com atraso



-- COMMAND ----------

-- 07 Lista de pedidos com avaliação maior ou igual que 4



-- COMMAND ----------

-- 08 Lista de pedidos com 2 ou mais parcelas menores que R$20,00


