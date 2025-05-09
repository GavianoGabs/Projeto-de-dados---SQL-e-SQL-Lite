--Gerar uma tabela de dados com 50 linhas, contendo o id
--do pedido, o estado e a cidade do cliente, o status do
--pedido, o nome da categoria do produto e o preço do
--produto, somente para pedidos com o status igual a
--cancelado.


SELECT 
	o.order_id,
	o.order_status, 
	oi.price,
	c.customer_state,
	c.customer_city,
	p.product_category_name 
FROM orders o LEFT JOIN customer c ON (o.customer_id = c.customer_id)
		      LEFT JOIN order_items oi ON (o.order_id = oi.order_id)
			  LEFT JOIN products p ON (oi.product_id = p.product_id)
WHERE o.order_status = 'canceled' 
LIMIT 50;

