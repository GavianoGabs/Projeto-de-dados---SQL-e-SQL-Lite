-- Gere uma tabela com o id do cliente e o estado, somente
--dos clientes que vivem em Florianópolis.

SELECT 
	c.customer_id,
	c.customer_state 
FROM customer c 
WHERE 
c.customer_city = 'florianopolis'

