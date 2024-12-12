USE project;

#Query using inner join
SELECT b.book_name, a.author_name
FROM books b
INNER JOIN book_author ba ON b.book_id = ba.book_id
INNER JOIN authors a ON ba.author_id = a.author_id;

#Query using outer join
SELECT u.user_id, u.username, r.rating, r.comment
FROM users u
LEFT OUTER JOIN reviews r ON u.user_id = r.user_id;

#Using subquery in where
SELECT book_name, buy_price
FROM books
WHERE buy_price > (SELECT AVG(buy_price) FROM books);

#Using subquery in from
SELECT c.category_id, c.category_name, AVG(b.buy_price) AS avg_price
FROM categories c
LEFT JOIN (
    SELECT category_id, buy_price
    FROM books
) b ON c.category_id = b.category_id
GROUP BY c.category_id;

#Query using group by and aggregate functions
SELECT b.category_id, c.category_name, COUNT(b.book_id) AS total_books, SUM(b.stock) AS total_stock
FROM books b
INNER JOIN categories c ON b.category_id = c.category_id
GROUP BY b.category_id;