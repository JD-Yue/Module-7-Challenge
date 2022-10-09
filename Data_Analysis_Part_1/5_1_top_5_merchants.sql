CREATE VIEW top_5_merchants AS
SELECT merchant, COUNT(amount) 
FROM transactions_less_than_2
GROUP BY merchant
ORDER BY COUNT DESC
LIMIT 5

SELECT * FROM top_5_merchants





