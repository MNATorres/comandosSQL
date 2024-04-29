SELECT b.title, a.name
FROM authors as a, books as b
WHERE a.author_id = b.author_id;


-- MEJOR MANERA DE HACERLO, DEBAJO DEL JOIN SI O SI VA LA CONDICION
SELECT b.title, a.name
FROM books as b
INNER JOIN authors as a 
    ON a.author_id = b.author_id
LIMIT 15;

SELECT a.author_id, a.name, a.nationality, COUNT(b.book_id)
FROM authors as a 
LEFT JOIN books as b 
    ON b.author_id = a.author_id
WHERE a.author_id between 1 and 5
GROUP BY a.author_id
order by a.author_id

