INSERT INTO `clients` (client_id, name, email, birthdate,gender, active, created_at)
VALUES(1,'Maria Dolores Gomez','MariaDolores.95983222J@random.names','1971-06-06','F',1,'2018-04-09 16:51:30'),
(2,'Adrian Fernandez','Adrian.55818851J@random.names','1970-04-09','M',1,'2018-04-09 16:51:30'),
(3,'Maria Luisa Marin','MariaLuisa.83726282A@random.names','1957-07-30','F',1,'2018-04-09 16:51:30'),
(4,'Pedro Sanchez','Pedro.78522059J@random.names','1992-01-31','M',1,'2018-04-09 16:51:30');

INSERT INTO `clients` ( name, email, birthdate,gender, active, created_at)
VALUES ('Pedro Sanchez','Pedro.78522059J@random.names','1992-01-31','M', 0,'2018-04-09 16:51:30')
ON DUPLICATE KEY UPDATE active = VALUES(active);