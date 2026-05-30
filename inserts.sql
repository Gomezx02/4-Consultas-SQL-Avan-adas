-- ================================================
-- inserts.sql - Inserção de Dados (Dataset)
-- Projeto: Análise de Vendas por Cliente
-- ================================================

INSERT INTO clientes (nome)
VALUES
    ('Kevin'),
    ('Rafael'),
    ('Pedro'),
    ('Augusto');

INSERT INTO pedidos (id_cliente, valor_total)
VALUES
    (1, 300.00),
    (1, 250.00),
    (2, 150.00),
    (3, 700.00),
    (4, 200.00),
    (4, 400.00);
