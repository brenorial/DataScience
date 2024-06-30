--GROUP BY
--PEGAR UMA COLUNA COM 3 NOMES E OUTRA COM VÁRIAS. VAI SOMAR E AGRUPAR PARA CADA NOME

SELECT coluna onde está números, SUM() AS "NOME COLUNA"
FROM tabela que quero pegar informações
GROUP BY nome da coluna;

SELECT * FROM public.orders
SELECT * FROM public.employees

	
SELECT od.employee_id, COUNT(od.order_id) AS "Vendas"
FROM public.orders AS od
GROUP BY od.employee_id;
