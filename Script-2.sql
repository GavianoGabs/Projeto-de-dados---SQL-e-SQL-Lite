--Gere uma tabela com o estado, latitude e longitude do
--estado de São Paulo

SELECT 
	g.geolocation_state,
	g.geolocation_lat,
	g.geolocation_lng
FROM geolocation g 
WHERE 
	g.geolocation_state = 'SP'
