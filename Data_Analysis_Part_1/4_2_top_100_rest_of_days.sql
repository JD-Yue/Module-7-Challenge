CREATE VIEW top_100_rest_of_day AS
SELECT *
FROM complete_table
WHERE EXTRACT (hour from date) < 7 or EXTRACT (hour from date) >= 9
ORDER BY amount DESC
LIMIT 100

SELECT name, card, date, amount, merchant, category
FROM top_100_rest_of_day
GROUP BY name, card, date, amount, merchant, category