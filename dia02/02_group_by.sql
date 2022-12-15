-- Databricks notebook source
SELECT
  descUF,
  COUNT(*)
    AS countUF
FROM
  silver_olist.cliente
GROUP BY
  descUF, 

-- COMMAND ----------

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico)
    AS countIdClienteUnico
FROM
  silver_olist.cliente
GROUP BY
  descUF
