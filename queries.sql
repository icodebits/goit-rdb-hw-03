/* p1 
1. Напишіть SQL команду, за допомогою якої можна:
вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products;
вибрати тільки стовпчики name, phone з таблиці shippers,
та перевірте правильність її виконання в MySQL Workbench.
*/
SELECT * FROM mydb.products;
SELECT name, phone FROM mydb.shippers;

/* p2 
2. Напишіть SQL команду, за допомогою якої можна знайти середнє,
максимальне та мінімальне значення стовпчика price таблички products,
та перевірте правильність її виконання в MySQL Workbench*.*
*/
SELECT 
    AVG(price) AS average_price, 
    MAX(price) AS max_price, 
    MIN(price) AS min_price
FROM mydb.products;

/* p3 
3. Напишіть SQL команду, за допомогою якої можна обрати унікальні
значення колонок category_id та price таблиці products.
Оберіть порядок виведення на екран за спаданням значення price
та виберіть тільки 10 рядків. Перевірте правильність виконання
команди в MySQL Workbench.
*/
SELECT DISTINCT category_id, price
FROM mydb.products
ORDER BY price DESC
LIMIT 10;

/* p4
4. Напишіть SQL команду, за допомогою якої можна знайти кількість
продуктів (рядків), які знаходиться в цінових межах від 20 до 100,
та перевірте правильність її виконання в MySQL Workbench.
*/
SELECT COUNT(*) AS product_count
FROM mydb.products
WHERE price BETWEEN 20 AND 100;

/* p5 
5. Напишіть SQL команду, за допомогою якої можна знайти кількість
продуктів (рядків) та середню ціну (price) у кожного постачальника
(supplier_id), та перевірте правильність її виконання в MySQL Workbench.
*/
SELECT supplier_id, COUNT(*) AS product_count, AVG(price) AS average_price
FROM mydb.products
GROUP BY supplier_id;