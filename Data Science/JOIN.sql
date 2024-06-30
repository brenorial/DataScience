-- JOIN
-- Trazer informações da tabela A para B = AB

SELECT 
	coluna.1, coluna.2, coluna.3
	FROM tabela_A
	JOIN tabela_B
	ON tabela_A.id_em_comum = tabela_B.id_em_comum 


SELECT * FROM public.orders
SELECT * FROM public.employees

SELECT 
	po.customer_id, pe.first_name, pe.last_name
	FROM public.orders AS po
	JOIN public.employees AS pe
	ON po.employee_id = pe.employee_id

SELECT 
    po.customer_id, 
    pe.first_name, 
    pe.last_name,
    COUNT(pe.first_name) AS name_count --CONTE coluna nome COMO "nome da coluna"
FROM 
    public.orders AS po
JOIN 
    public.employees AS pe
ON 
    po.employee_id = pe.employee_id
GROUP BY  --AJUNTANDO
    po.customer_id, 
    pe.first_name, 
    pe.last_name
ORDER BY --ORDENE POR 
    pe.first_name DESC;
