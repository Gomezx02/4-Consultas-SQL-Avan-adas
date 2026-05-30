-- ================================================
-- consultas.sql - Consultas SQL Avançadas
-- Projeto: Análise de Vendas por Cliente
-- ================================================

-- CONSULTA 1 - JOIN
-- Objetivo: Relacionar clientes e pedidos
SELECT clientes.nome, pedidos.valor_total
FROM clientes
JOIN pedidos
    ON clientes.id_cliente = pedidos.id_cliente;


-- CONSULTA 2 - GROUP BY
-- Objetivo: Somar total gasto por cliente
SELECT id_cliente,
       SUM(valor_total) AS total
FROM pedidos
GROUP BY id_cliente;


-- CONSULTA 3 - HAVING
-- Objetivo: Filtrar clientes com gastos acima de 500
SELECT id_cliente,
       SUM(valor_total) AS total
FROM pedidos
GROUP BY id_cliente
HAVING SUM(valor_total) > 500;


-- CONSULTA 4 - CTE (Common Table Expression)
-- Objetivo: Usar subconsulta nomeada para filtrar vendas totais acima de 500
WITH vendas_totais AS (
    SELECT id_cliente,
           SUM(valor_total) AS total
    FROM pedidos
    GROUP BY id_cliente
)
SELECT *
FROM vendas_totais
WHERE total > 500;

-- Resultado esperado:
-- id_cliente | total
-- -----------+--------
--          3 | 700.00
--          4 | 600.00
--          1 | 550.00
