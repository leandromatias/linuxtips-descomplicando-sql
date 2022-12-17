-- Databricks notebook source
SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico)
    AS countIdClienteUnico
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  descUF

-- COMMAND ----------

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico)
    AS countIdClienteUnico
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  2 -- pela segunda coluna da consulta

-- COMMAND ----------

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico)
    AS qtClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  qtClienteEstado

-- COMMAND ----------

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico)
    AS qtClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico)
    AS qtClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  qtClienteEstado DESC

-- COMMAND ----------

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico)
    AS qtClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  qtClienteEstado DESC
  
LIMIT 1
