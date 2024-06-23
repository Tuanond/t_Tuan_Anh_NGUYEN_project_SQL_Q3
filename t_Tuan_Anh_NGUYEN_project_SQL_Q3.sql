-- Výzkumná otázka č. 3
-- 3. Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?

SELECT 
	cpc.name,
	cp.category_code,
	round(avg(cp.value),2) AS average_value,
	year(cp.date_from)
FROM czechia_price AS cp
LEFT JOIN czechia_price_category AS cpc
	ON cp.category_code = cpc.code 
GROUP BY cpc.name, year(cp.date_from);
