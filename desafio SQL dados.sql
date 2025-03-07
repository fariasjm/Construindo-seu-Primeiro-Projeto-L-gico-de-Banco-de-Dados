-- Inserção de Dados

SHOW DATABASES;
USE e_Commerce;
SHOW TABLES;
DESC Cliente;

-- Inserindo Dados Tabela Cliente

INSERT INTO Cliente (prenome, sobrenome, tipo_doc, tipo_conta, dt_nascimento, endereco, bairro, numero, complemento,
    cidade, estado, pais) VALUES
    ('Carlos', 'Junior', 123456789, 'PJ', '2007-05-08', 'Rua A', 'Bairro B', 'Andradas', '53', '', 'MG', 'BR'),
    ('Isaac', 'Silva', 987654321, 'PJ', '2007-07-18', 'Rua A', 'Bairro B', 'Andradas', '53', '', 'MG', 'BR'),
    ('Matheus', 'Pimentel', 987654321, 'PJ', '2007-05-08', 'Rua Almeida Pinto', 'Centro', '289', 'Cidade das flores', 'RJ', 'BR'),
	('Ricardo', 'Silva', 45678913, 'PJ', '2009-07-28', 'Avenida Vinhais', 'Centro', '1009', 'Nova Floresta', 'MA', 'BR'),
	('Julia', 'França', 789123456, 'PJ', '2005-02-22', 'Rua Lareijras', 'Centro', '861', 'Cidade Nova', 'PA', 'BR');
    
-- Inserindo Dados Tabela Cartoes

DESC Cartoes;

INSERT INTO Cartoes (nro_cartao, nome_cartao, bandeira_cartao, idCliente) VALUES
	('345645674332', 'Carlos Junior', 'Visa', 1),
    ('345645674332', 'Isaac Silva', 'Visa', 2),
    ('345645674332', 'Rosilene Couto', 'Visa', 3);
    
-- Inserindo Dados Tabela Fornecedor

DESC Fornecedor;

INSERT INTO Fornecedor (razao_social, cnpj, telefone) VALUES
	('Fulano Brinquedos', '345566556563425', '3599996006'),
    ('Siclando Modas', '565656565656789', '11677653456');
    
-- Inserindo Dados Tabela Produtdo

DESC Produto;

INSERT INTO Produto (nome, categoria, descricao, valor, classificacao_criancas, altura_cm, largura_cm, comprimento_cm, peso_kg) VALUES
	('Camisa Preta', 'Roupas', 'Camisa masculina com várias cores.', 30.50, 0, 30, 30, 10, 0.200),
	('Carrinho de controle remoto', 'Brinquedos', 'Carrinho com pilhas recarregáveis.', 70.00, 1, 20, 30, 40, 0.500),
	('Calça jeans', 'Roupas', 'Calça jeans feminina', 60.99, 0, 30, 30, 5, 0.200),
    ('Boneco Soldado', 'Brinquedos', 'Boneco de soldado', 60.99, 0, 30, 30, 5, 0.200);

-- Inserindo Dados Tabela Fornecedor-Produto

DESC Fornecedor_Produto;

INSERT INTO Fornecedor_Produto VALUES
	(1, 2),
    (2, 1),
    (2, 3);
    
-- Inserindo Dados Tabela Vendedor

DESC Vendedor;

INSERT INTO Vendedor (razao_social, endereco, nome_fantasia, cnpj, cpf) VALUES
	('Terceiro Moda LTDA', 'Rua A, 32, Jd B, São Paulo, SP', 'Roupas Daora', '64517366000115', ''),
    ('Pequenino Importação LTDA', 'Rua C, 12, Jd D, Diadema, SP', 'Pequeninos Brinquedos', '35478258000182', '');
    
-- Inserindo Dados Tabela Produto-Vendedor

DESC Produto_Vendedor;

INSERT INTO Produto_Vendedor (Terceiro_idVend, Produto_idProd, quantidade) VALUES
	(1, 4, 10);
    
-- Inserindo Dados Tabela Estoque

DESC Estoque;

INSERT INTO Estoque (locacao, endereco) VALUES
	('Box B, 203', 'Armazem A'),
    ('Box A, 123', 'Armazem B'),
    ('', 'Armazenado por terceiro');
    
-- Inserindo Dados Tabela Produto-Estoque 

DESC Produto_Estoque;

INSERT INTO Produto_Estoque (Produto_idProd, Estoque_idEstoque, quantidade) VALUES
	(1, 1, 22),
    (2, 1, 32),
    (3, 2, 10),
    (4, 3, 21);
    
-- Inserindo Dados Tabela Pedido

DESC Pedido;

INSERT INTO Pedido (status, descricao, Cliente_idCliente, Frete, valor_total) VALUES
	('Em andamento', '', 1, 25.60, 300.00),
    ('Processando', '', 2, 34.00, 500.00),
    ('Enviado', '', 3, 0.00, 70.00),
    ('Entregue', 'Finalizado', 3, 20.00, 80.00);
    
-- Inserindo Dados Tabela Entrega

DESC Entrega;

INSERT INTO Entrega (cod_rastreio, dt_entrega, dt_saida, status, transportadora, idPedido) VALUES
	('FGFG56565', NULL, NULL, 'Em separação', 'Correios', 1),
    ('FGFG56565', NULL, NULL, 'Aguardando', 'Correios', 2),
    ('FGFG56565', '2007-05-08', NULL, 'Saiu para entrega', 'Correios', 3),
    ('FGFG56565', '2007-05-08', '2007-05-18', 'Entregue', 'Correios', 4);
    
-- Inserindo Dados Tabela Pagamento

DESC Pagamento;

INSERT INTO Pagamento (idCliente, tipo, dt_Pag, idcartao_Pag, pix_Pag, boleto_Pag, idPedido) VALUES
	('1', 'boleto', '2008-12-12', NULL, NULL, 'https://boleto.com', 1),
    ('2', 'boleto', '2008-12-12', NULL, NULL, 'https://boleto.com', 2),
    ('3', 'pix', '2008-12-12', NULL, 'governo.etc', NULL, 3),
    ('3', 'cartao_credito', '2008-12-12', 3, NULL, NULL, 1);