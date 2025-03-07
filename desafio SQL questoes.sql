-- Criação de Queries SQL com as cláusulas abaixo:


-- Recuperações simples com SELECT Statement
SELECT * FROM Cliente;

-- Filtros com WHERE Statement
SELECT * FROM Pedido WHERE Cliente_idCliente = 3;

-- Crie expressões para gerar atributos derivados
SELECT nome, round(valor*0.1, 2) as Comissao FROM Produto;

-- Defina ordenações dos dados com ORDER BY
SELECT * FROM Pedido WHERE Cliente_idCliente = 3 ORDER BY valor_total DESC;

-- Condições de filtros aos grupos – HAVING Statement
SELECT count(idPedido) as qtde_compras, Cliente_idCliente as cliente, SUM(valor_total) as valor_total
FROM Pedido
GROUP BY cliente
HAVING valor_total >= 200;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
SELECT count(p.idPedido) as qtde_compras, SUM(p.valor_total) as valor_total, CONCAT(c.prenome, c.sobrenome) as nome_cliente, 
	CONCAT(c.endereco, ', ', c.numero, ', ', c.bairro, ', ', c.cidade, '-', c.estado, ', ', c.pais) as endereco_cliente
FROM Pedido p
INNER JOIN Cliente c on c.idCliente = p.Cliente_idCliente
GROUP BY p.Cliente_idCliente
HAVING valor_total >= 200;

-- Quantos pedidos foram feitos por cada cliente?
SELECT count(p.idPedido) as qtde_pedidos, CONCAT(c.prenome, c.sobrenome) as nome_cliente
FROM Pedido p
INNER JOIN Cliente c on c.idCliente = p.Cliente_idCliente
GROUP BY p.Cliente_idCliente;

-- Algum vendedor também é fornecedor?
SELECT count(v.idVend) as qtde_Vendedor, razao_social
FROM Vendedor v
INNER JOIN Fornecedor f on v.razao_social = f.razao_social
GROUP BY v.razao_social;




