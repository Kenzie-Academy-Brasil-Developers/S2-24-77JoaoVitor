-- Aqui você deve colocar os códigos SQL referentes às
-- Seleções de dados
SELECT
	*
FROM 
	pedidos pe
	JOIN 
	produtos pr ON pr.id = pe.id;


SELECT 
    pe.id
FROM 
	pedidos pe
JOIN 
	produtos_pedidos pp ON pe.id = pp.pedido_id
JOIN 
	produtos pr ON pr.id = pp.produto_id
WHERE
	pr.nome = 'Fritas';

    
SELECT 
    cl.nome gostam_de_fritas
FROM 
	clientes cl
JOIN
	pedidos pe ON cl.id = cliente_id
JOIN 
	produtos_pedidos pp ON pe.id = pp.pedido_id
JOIN 
	produtos pr ON pr.id = pp.produto_id
WHERE
	pr.nome = 'Fritas';


SELECT 
	sum(pr.preço) AS sum
FROM 
 	produtos pr
JOIN 
	produtos_pedidos pp ON pr.id =  pp.produto_id
JOIN 
	pedidos pe ON pe.id = pp.pedido_id
JOIN 
	clientes cl ON cl.id = pe.cliente_id
WHERE 
	cl.nome ILIKE  '%Laura%';

INSERT INTO clientes 
	(nome,lealdade)
	VALUES
	('Georgia', 0);

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
		
	