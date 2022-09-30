-- Aqui você deve colocar os códigos SQL referentes às
-- Simulações de um CRUD

-- Criação
INSERT INTO pedidos
	(status, cliente_id)
	VALUES 
	('Recebido', 6);

SELECT
	*
	FROM 
	produtos;
SELECT
	*
	FROM 
	pedidos;
	

		
	

-- Leitura
SELECT
	*
	FROM 
	produtos;
SELECT
	*
	FROM 
	pedidos;
	
-- 1)

INSERT INTO produtos_pedidos
(pedido_id, produto_id)
	VALUES 
	(11, 1),
	(11, 2),
	(11, 6),
	(11, 8),
	(11, 8);

    SELECT 
	*
	FROM 
	clientes cl
	JOIN
	pedidos pe ON cl.id = pe.cliente_id
	JOIN 
	produtos_pedidos pp ON pp.pedido_id = pe.id
 	JOIN
 	produtos pr ON pr.id = pp.produto_id
 	WHERE 
 	cl.nome = 'Georgia';

-- Atualização
		
-- 1)



-- Deleção

-- 1)


