-- Výzkumná otázka č. 3
-- 3. Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?

SELECT 
	cpc.name,
	cp.*
FROM czechia_price AS cp
LEFT JOIN czechia_price_category AS cpc
	ON cp.category_code = cpc.code
ORDER BY cp.date_from, cpc.name;
