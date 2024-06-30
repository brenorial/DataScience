--OPERAÇÕES 

SELECT pd.*
	FROM public.products AS pd
	WHERE pd.unit_price >= '20' --FILTRO
	ORDER BY pd.unit_price ASC; --ORDENA

--MULTIPLICAÇÃO
SELECT pd.*, (pd.units_on_order * pd.unit_price) AS "VALOR TOTAL" 
FROM public.products AS pd
WHERE pd.unit_price >= 20
ORDER BY pd.unit_price ASC;

--SOMA
SELECT
	SUM(pd.unit_price) FROM public.products AS pd

--CONTAGEM
SELECT
	COUNT(pd.unit_price) FROM public.products AS pd

--MINIMO
SELECT
MIN(pd.unit_price) AS "Preço Mínimo" FROM public.products AS pd

--MÁXIMO
SELECT
MAX(pd.unit_price) AS "Preço Máximo" FROM public.products AS pd