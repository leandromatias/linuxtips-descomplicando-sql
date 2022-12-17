-- Databricks notebook source
SELECT descUF, COUNT(idVendedor) AS qtVendedorUF
FROM silver_olist.vendedor
WHERE descUF IN ('SP', 'MG', 'RJ', 'ES')
GROUP BY descUF
HAVING qtVendedorUF >= 100 -- filtro após o dado estar agrupado, diferente do WHERE
ORDER BY qtVendedorUF DESC

-- leia-se: selecione os estados e conte os vendedores po
