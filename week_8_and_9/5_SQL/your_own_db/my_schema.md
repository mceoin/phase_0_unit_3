 CREATE TABLE freds_facebook_friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64) NOT NULL,
    email VARCHAR(128) UNIQUE NOT NULL,
    phone_number VARCHAR(10) UNIQUE NOT NULL,
    location VARCHAR(64) NOT NULL, 
    last_logged_in TIMESTAMP
    );

CREATE TABLE freds_address_book (
id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(64) NOT NULL,
    email VARCHAR(128) UNIQUE NOT NULL,
    phone_number VARCHAR(10) UNIQUE NOT NULL,
    location VARCHAR(64) NOT NULL,
    birth_date YEAR(4) NOT NULL
   );


INSERT INTO freds_facebook_friends
(name, email, phone_number, location, last_logged_in)
VALUES
('Tom', 'tomkastaneda@fiction.ru', 'Portland', 9940342756, DATETIME('now'));


INSERT INTO freds_facebook_friends
(name, email, phone_number, location, last_logged_in)
VALUES
('Mary', 'marymaryquitecontrary@hiphopapottamous.com',9102837465, 'Pastaville',  DATETIME('now'));

INSERT INTO freds_facebook_friends
(name, email, phone_number, location, last_logged_in)
VALUES
('Tim', 'timnotchris@somewhere.life', 0098765712,'Pastaville',  DATETIME('now'));

INSERT INTO freds_facebook_friends
(name, email, phone_number, location, last_logged_in)
VALUES
('Margaret', 'margaret@self.co', 4456345172, 'Portland', DATETIME('now'));

INSERT INTO freds_address_book
(name, email, phone_number, location, birth_date)
VALUES
('Margaret', 'margaret@self.co', 4456345172,'Portland',  1994);

INSERT INTO freds_address_book
(name, email, phone_number, location, birth_date)
VALUES
('Peter', 'petermogul@IonlyUseFirstNames.pi', 2347772912,'Emeryville',  1994);

INSERT INTO freds_facebook_friends
(name, email, phone_number, location, last_logged_in)
VALUES
('Harry', 'Potter', 1823475869, 'Portland', DATETIME('now'));


INSERT INTO freds_address_book
(name, email, phone_number, location, birth_date)
VALUES
('Bob', 'bobthebuilder@myself.com', 1122334455,'Emeryville',  1900);












