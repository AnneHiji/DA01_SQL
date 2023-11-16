SELECT manufacturer,
COUNT(DRUG) AS drug_count,
ABS(SUM(COGS-TOTAL_SALES)) AS total_loss
FROM pharmacy_sales
WHERE total_sales < cogs
GROUP BY (manufacturer)
ORDER BY total_loss DESC;
