/* p1 */
SELECT * FROM mydb.products;
SELECT name, phone FROM mydb.shippers;

/* p2 */
SELECT 
    AVG(price) AS average_price, 
    MAX(price) AS max_price, 
    MIN(price) AS min_price
FROM mydb.products;