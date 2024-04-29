-- Eliminar todos los datos
DELETE FROM authors

-- Elminar un dato especifico, poner limite parra estar seguro
DELETE FROM authors WHERE author_id = 166 limit 1

-- Poner el WHERE en el update para no actualizar toda la tabla
UPDATE tabla
SET
    [columna = valor, ...]
WHERE 
    [condiciones]
LIMIT 1;


UPDATE clients
SET active = 0
WHERE client_id = 95
LIMIT 1;

UPDATE tabla
SET
    email = 'Marta.55741882W@random.names'
WHERE 
    client_id = 6
    OR client_id = 9


UPDATE clients
SET
    active = 0
WHERE 
    client_id IN (1,6,8,27,90)
    OR name like '%Lopez%';

SELECT client_id, name, active
from clients 
WHERE
    client_id IN (1,6,8,27,90)
    OR name like '%Lopez%'

-- Borrarelcontenido de la tabla
TRUNCATE transactions;