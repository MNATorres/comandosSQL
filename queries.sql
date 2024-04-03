-- El Laberinto de la Soledad, Octavio Paz, 1952
-- Vuelta al Laberinto de la soledad, Octavio Paz, 1960

INSERT INTO books(title, author_id) 
VALUES ('El Laberinto de la Soledad', 6);

INSERT INTO books(title, author_id, `year`) 
VALUES ('Vuelta al Laberinto de la soledad', 
    (SELECT author_id FROM authors 
    WHERE name = 'Octavio Paz'
    LIMIT 1
    ), 1960
);