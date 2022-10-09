-- create view with transactions less than $2
CREATE VIEW transactions_less_than_2 AS
SELECT *
FROM complete_table
WHERE amount < 2.00

SELECT * from transactions_less_than_2;

-- create view that counts transactions less than $2
CREATE VIEW count_less_than_2 AS
SELECT name, COUNT(amount)
FROM transactions_less_than_2
GROUP BY name

SELECT * from count_less_than_2;




