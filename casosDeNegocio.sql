--¿que nacionalidades hay?

SELECT DISTINCT nationality FROM authors;

--Cuantos escritores hay de cada nacionalidad?

SELECT nationality, COUNT(author_id) AS c_authors
FROM authors
WHERE nationality IS NOT NULL
AND  nationality NOT IN ('RUS', 'USA')
GROUP BY  nationality
ORDER BY c_authors DESC, nationality ASC;