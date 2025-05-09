--Gere uma tabela com o id do pedido, id do cliente, o
--status do pedido e a data de aprovação , somente para
--compras aprovadas até dia 05 de Outubro de 2016

SELECT 
	o.order_id,
	o.customer_id,
	o.order_status,
	o.order_approved_at 
FROM orders o 
WHERE 
	o.order_approved_at < '2016-10-05'
	
