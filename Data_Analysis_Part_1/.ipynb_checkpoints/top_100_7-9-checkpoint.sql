CREATE VIEW top_100_7_9 AS
SELECT *
FROM complete_table
WHERE EXTRACT (hour from date) >= 7 AND EXTRACT (hour from date) <= 9
ORDER BY amount DESC
LIMIT 100

SELECT name, card, date, amount, merchant, category
FROM top_100_7_9
GROUP BY name, card, date, amount, merchant, category
