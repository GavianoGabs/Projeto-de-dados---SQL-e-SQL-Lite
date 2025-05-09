--Gerar uma tabela de dados com 10 linhas, contendo o id
--do pedido, o id do cliente, o status do pedido, o id do produto
--e o preço do produto.

SELECT 
	o.order_id,
	o.customer_id,
	o.order_status,
	oi.product_id,
	oi.price 
FROM orders o INNER JOIN order_items oi ON (o.order_id = oi.order_id)
LIMIT 10;
