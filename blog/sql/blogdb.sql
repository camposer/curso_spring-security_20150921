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