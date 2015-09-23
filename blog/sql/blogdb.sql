DROP TABLE articulo;
CREATE TABLE articulo (
	id INTEGER NOT NULL 
		GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	titulo VARCHAR(250) NOT NULL,
	texto VARCHAR(500) NOT NULL,
	created_at DATE NOT NULL,
	PRIMARY KEY (id)
);
INSERT INTO articulo(titulo, texto, created_at) 
VALUES('titulo 1', 'texto 1', '2015-09-21');
INSERT INTO articulo(titulo, texto, created_at) 
VALUES('titulo 2', 'texto 2', '2015-09-21');
INSERT INTO articulo(titulo, texto, created_at) 
VALUES('titulo 3', 'texto 3', '2015-09-21');

-- JDBC Auth
--select username, password, enabled from users where username = ?
--password = sha1('123')
CREATE TABLE users (
	username VARCHAR(50) NOT NULL,
	password VARCHAR(70) NOT NULL,
	enabled BOOLEAN NOT NULL,
	PRIMARY KEY(username)
);
INSERT INTO users(username, password, enabled)
VALUES('user', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', true);
INSERT INTO users(username, password, enabled)
VALUES('admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', true);

--select username, authority from authorities where username = ?
CREATE TABLE authorities (
	username VARCHAR(50) NOT NULL,
	authority VARCHAR(20) NOT NULL,
	PRIMARY KEY(username, authority),
	FOREIGN KEY (username) REFERENCES users(username)
);
INSERT INTO authorities(username, authority)
VALUES('user', 'ROLE_USER');
INSERT INTO authorities(username, authority)
VALUES('admin', 'ROLE_USER');
INSERT INTO authorities(username, authority)
VALUES('admin', 'ROLE_INFO');
