Metodología de DSDM



/*Construcción de base de datos con SQL-LDD (CREATE, ALTER, DROP)*/
--Crear una base de datos
CREATE DATABASE empresa_patito;
GO

--Utilizar la base de datos 
USE empresa_patito;
GO

--Crear tabla
CREATE TABLE alumno(
	alumno_id INT, 
	nombre VARCHAR(30),
	apellido_paterno VARCHAR(20),
	apellido_materno VARCHAR(20),
	fecha_nacimiento INT,
	corres VARCHAR(25),
);
GO

INSERT INTO alumno
VALUES (1, 'Domingo', 'Sarabia', 'Mendez', '1924-03-14', 'domingo@domingo.com');

INSERT INTO alumno
VALUES (1, 'Patricio', 'Pineda', 'Robles', '1912-04-14', 'patricio@patito.com');
GO

SELECT *
FROM alumno
CREATE TABLE alumno(
	alumno_id INT PRIMARY KEY, 
	nombre VARCHAR(30),
	apellido_paterno VARCHAR(20),
	apellido_materno VARCHAR(20),
	fecha_nacimiento INT,
	corres VARCHAR(25),
);
GO

INSERT INTO alumno
VALUES (1, 'Domingo', 'Sarabia', 'Mendez', '1924-03-14', 'domingo@domingo.com');

INSERT INTO alumno
VALUES (2, 'Patricio', 'Pineda', 'Robles', '1912-04-14', 'patricio@patito.com');
GO

SELECT *
FROM alumno

DROP TABLE alumno;
GO

CREATE TABLE alumno(
	alumno_id INT NOT NULL, 
	CRONSTRAINT pk_alumno;
	PRIMARY KEY (alumno_id)
	nombre VARCHAR(30),
	apellido_paterno VARCHAR(20),
	apellido_materno VARCHAR(20),
	fecha_nacimiento INT,
	corres VARCHAR(25),
);
GO

DROP TABLE alumno;
GO
CREATE TABLE alumno(
	alumno_id INT NOT NULL, 
	nombre VARCHAR(30),
	apellido_paterno VARCHAR(20),
	apellido_materno VARCHAR(20),
	fecha_nacimiento INT,
	corres VARCHAR(25),
	CONSTRAIN pk_alumno
	PRIMARY KEY (alimno_id)
);
GO

INSERT INTO alumno
VALUES (1, 'Domingo', 'Sarabia', 'Mendez', '1924-03-14', 'domingo@domingo.com');

INSERT INTO alumno
VALUES (2, 'Patricio', 'Pineda', 'Robles', '1912-04-14', 'patricio@patito.com');
GO


SELECT *
FROM alumno

--Primary key con IDENTITY

CREATE TABLE categoría(
categoria_id INT IDENTITY (1,1) PRIMAY KEY,
nombre VARCHAR(25) NOT NULL,
activo bit NOT NULL
);
GO

INSERT INTO categoria
VALUES('carnes_frias', 1)

INSERT INTO categoria
VALUES('carnes_frias', 1)

SELECT * 
FROM Categoria

DROP TABLE categoria 
-- Restriccion check 

CREATE TABLE categoría(
categoria_id INT IDENTITY (1,1),
CONSTRAIN pk_categoria
PRIMARY KEY (categoria_id),
nombre VARCHAR(25) NOT NULL UNIQUE,
activo bit NOT NULL
);
GO

CREATE TABLE categoría(
categoria_id INT IDENTITY (1,1),
PRIMARY KEY (categoria_id),
nombre VARCHAR(25) NOT NULL,
CONSTRAIN uq_categoria_nombre
UNIQUE,
activo bit NOT NULL
);
GO

CREATE TABLE categoría(
categoria_id INT IDENTITY (1,1),
PRIMARY KEY (categoria_id),
nombre VARCHAR(25) NOT NULL,
activo bit NOT NULL
CRONSTRAIN pk_categoria
PRIMARY KEY (categortia_id)
CRONSTRAIN uq_categoria_nombre
UNIQUE (nombre)
);
GO

INSERT INTO categoria
VALUES('carnes_frias', 1)

INSERT INTO categoria
VALUES('carnes_frias', 1)

DROP TABLE categoría;


--RESTRICCION CHECK
--Primera forma de construccion

CREATE TABLE producto(
	producto_id INT NOT NULL PRIMARY KEY,
	nombre VARCHAR (20) NOT NULL UNIQUE,
	precio DECIMAL (10, 2) NOT NULL CHECK (precion>0.0),
	existencia INT NOT NULL CHECK (existencia>0 AND existencia<=100),
	activo BIT NOT NULL DEFAULT 1
);
GO

--Segunda forma de restriccion
DROP TABLE producto
CREATE TABLE producto(
	producto_id INT NOT NULL IDENTITY (1,1),
	CONSTRAIN pk_producto
	PRIMARY KEY,
	nombre VARCHAR (20) NOT NULL
	UNIQUE,
	precio DECIMAL (10, 2) NOT NULL
	CONSTRAIN ck_producto_precio
	CHECK (precio>0,0)
	existencia INT NOT NULL
	CONSTRAIN ck_proucto_existencia
	CHECK (existencia BETWEEN 1 AND 100),
	tipo CHAR(1)NOT NULL
	CONSTRAIN ck_producto_tipo
	CHECK(tipo='R' OR tipo='P'),
	activo BIT NOT NULL
	CONSTRAIN df_producto_activo
	DEFAULT 1
);
GO

--Tercera forma de construcción es al final de las cosntrucciones

CREATE TABLE producto(
	producto_id INT NOT NULL IDENTITY (1,1),


	nombre VARCHAR (20) NOT NULL
	UNIQUE,
	precio DECIMAL (10, 2) NOT NULL
	
	existencia INT NOT NULL
	
	tipo CHAR(1)NOT NULL
	
	activo BIT NOT NULL
	CONSTRAIN df_producto_activo
	DEFAULT 1
	CONSTRAIN pk_producto
	PRIMARY KEY (producto_id),
	CONSTRAIN uq, producto, nombre
	UNIQUE (nombre),
	CONSTRAIN ck_producto_precio
	CHECK (precio>0.0),
	CONSTRAIN ck_producto_existencia
	CHECK (existencia BETWEEN 1 AND 100),
	CONSTRAIN ck_producto_tipo
CHECK(tipo IN ('R', 'P'))
	


INSERT INTO producto
VALUES ('Pitufo', 450, 98, DEFAULT);

INSERT INTO producto
VALUES ('Quemadita', 12, 89, DEFAULT);

INSERT INTO producto (nombre, existenia, precio)
VALUES('Pantera rosa', 76, 123);

INSERT INTO producto (nombre, existenia, precio)
VALUES('Pantera rosa', 76, 123);

TRUNCATE TABLE producto;  //no funciona sin hijos, es un leguaje de definicion
 

SELECT *
FROM producto;
GO

--Creación de empresa yoda

CREATE DATABASE empresa_yoda;
GO

USE empresa_yoda
GO

CREATE TABLE categoría (
	categoria_id INT NOT NULL INDENTITY(1,1),
	CONSTRAIN pk_categoria
	PRIMARY KEY,
	nombre VARCHAR (20) NOT NULL
	CONSTRAIN uq_categoria_nombre
	UNIQUE,
	activo BIT NOT NULL,
	CONSTRAIN df_categoria_activo
	DEFAULT 1	
);
GO

CREATE TABLE producto(
	product_id INT NOT NULL,
	fabricante_id CHAR (3) NOT NULL,
	nomre VARCHAR (25) NOT NULL,
	existencia INT NOT NULL,
	precio NUMERIC(10,2)NOT NULL,
	activo BIT NOT NULL 
	categoria_id INT NOT NULL,
	CONSTRAIN df_producto_activo
	DEFAULT 1,
	CONSTRAIN pk_preoducto
	PRIMARY KEY (producto_id, fabricante_id),
	CONSTRAIN uq_proucto_nombre
	UNIQUE (nombre),
	CONSTRAIN ck_producto-existencia
	CHECK (existencia>0),
	CONSTRAIN ck_producto_precio
	CHECK (precio BETWEEN 1 AND 1000),
	CONSTRAIN fk_producto_categoria
	FORENIG KEY (categoria_id)   
	REFERENCE categoría (categoria_id) 
);
GO
INSERT INTO categoría (nombre)
VALUES('Front end')	
	('Backend')
	('cloud')

SELECT *
FROM categoría

INSERT INTO producto
VALUES (1, 'ff1', 'Tailwind', 987.34, 45, DEFAULT, 1)

INSERT INTO producto
VALUES (2, 'ff1', 'Bootstrap', 567.8, 24, 0, 1)

INSERT INTO producto
VALUES (1, 'ff2', 'aws', 34.5, 12, DEFAULT, 3)




CREATE TABLE preoveedor (
proveedor INT NOT NULL
CONSTRAIN pk_proveedor
PREIMRY KEY 
empresa VARCHAR (60),
limite_creditos DECIMAL (10, 2) NOT NULL


);
GO

DROP TABLE proveedor

CREATE TABLE contacto_provedor(
contacto_id,
nombre VARCHAR (20) NOT NULL
apellido_paterno VARCHAR (15) NOT NULL
apellido_materno VARCHAR (15)
teléfono VARCHAR (15) NOT NULL 
proveedor_id INT 
CONSTRAIN fk_contacto_proveedor_preveedor
FOREING KEY  (proveedor_id)
REFERENCE proveedor (proveedor_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
GO

INASERT INTO proveedor
VALUES(1 'patito de hule', NULL, 6788.01)
	(2 'Bimbo', NULL, 6788.01)
	(3 ' Dulces domingo ', NULL, 6788.01)
	(4 ' Drugs kevin ', NULL, 6788.01)

INSERT INTO contacto_proveedor
VALUES('Soyla', 'vaca', 'del corral', '1222422334',2)
('Carmen', 'Se perdio la cadenita', '12223456', 2 )
('Juanito', 'Dulce', 'Terruño', '12343455', 2)
('Laura', 'No esta', 'Contenido', '122242334', 1)

SELECT * FROM provedor;
SELECT * FROM provedor
WHERE provedor_id=2;


UPDATE provedor
SET provedor_id =10;
WHERE provedor_id =2;

DROP TABLE contacto_provedor;
DROP TABLE provedor;

--Integridad referecial de set delete y on update set null

CREATE TABLE proveedor (
proveedor INT NOT NULL
CONSTRAIN pk_proveedor
PREIMRY KEY 
empresa VARCHAR (60),
limite_creditos DECIMAL (10, 2) NOT NULL


);
GO

DROP TABLE proveedor

CREATE TABLE contacto_provedor(
contacto_id,
nombre VARCHAR (20) NOT NULL
apellido_paterno VARCHAR (15) NOT NULL
apellido_materno VARCHAR (15)
teléfono VARCHAR (15) NOT NULL 
proveedor_id INT 
CONSTRAIN fk_contacto_proveedor_preveedor
FOREING KEY  (proveedor_id)
REFERENCE proveedor (proveedor_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
GO


INSERT INTO proveedor
VALUES(1 'patito de hule', NULL, 6788.01)
	(2 'Bimbo', NULL, 6788.01)
	(3 ' Dulces domingo ', NULL, 6788.01)
	(4 ' Drugs kevin ', NULL, 6788.01)

INSERT INTO contacto_proveedor
VALUES('Soyla', 'vaca', 'del corral', '1222422334',2)
('Carmen', 'Se perdio la cadenita', '12223456', 2 )
('Juanito', 'Dulce', 'Terruño', '12343455', 2)
('Laura', 'No esta', 'Contenido', '122242334', 1)


SELECT*
FROM proveedor AS p
INNER JOIN contacto_provedor AS cp
ON p proveedor_id = cp proveedor_id

DELETE FROM provedor
WHERE proveedor_id =2;

SELECT * FROM PROVEDOR;
SELECT * FROM contacto_proveedor;



--Integridad referecial de set delete y on update set null


CREATE TABLE preoveedor (
proveedor INT NOT NULL
CONSTRAIN pk_proveedor
PREIMRY KEY 
empresa VARCHAR (60),
limite_creditos DECIMAL (10, 2) NOT NULL


);
GO

DROP TABLE proveedor

CREATE TABLE contacto_provedor(
contacto_id,
nombre VARCHAR (20) NOT NULL
apellido_paterno VARCHAR (15) NOT NULL
apellido_materno VARCHAR (15)
teléfono VARCHAR (15) NOT NULL 
proveedor_id INT 
CONSTRAIN df_contacto_proveedor_proveedor_id
DEFAULT 0,
CONSTRAIN fk_contacto_proveedor_preveedor
FOREING KEY  (contacto_id)
REFERENCE proveedor (proveedor_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
GO


INSERT INTO proveedor
VALUES(1 'patito de hule', NULL, 6788.01),
	(2 'Bimbo', NULL, 6788.01),
	(3 ' Dulces domingo ', NULL, 6788.01),
	(4 ' Drugs kevin ', NULL, 6788.01),
	(0 'Todas mias', 'Enfañifas', 666.69);

INSERT INTO contacto_proveedor
VALUES('Soyla', 'vaca', 'del corral', '1222422334',2),
('Carmen', 'Se perdio la cadenita', '12223456', 2 ),
('Juanito', 'Dulce', 'Terruño', '12343455', 2),
('Laura', 'No esta', 'Contenido', '122242334', 1);


SELECT * FROM proveedor
SELECT * FROM contacto_proveedor

DELETE proveedor

CREATE TABLE contacto_provedor(
contacto_id,
nombre VARCHAR (20) NOT NULL
apellido_paterno VARCHAR (15) NOT NULL
apellido_materno VARCHAR (15)
teléfono VARCHAR (15) NOT NULL 
proveedor_id INT 
CONSTRAIN fk_contacto_proveedor_preveedor
FOREING KEY  (proveedor_id)
REFERENCE proveedor (proveedor_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
GO

INSERT INTO proveedor
VALUES(1 'patito de hule', NULL, 6788.01)
	(2 'Bimbo', NULL, 6788.01)
	(3 ' Dulces domingo ', NULL, 6788.01)
	(4 ' Drugs kevin ', NULL, 6788.01)

INSERT INTO contacto_proveedor
VALUES('Soyla', 'vaca', 'del corral', '1222422334',2),
('Carmen', 'Se perdio la cadenita', '12223456', 2 ),
('Juanito', 'Dulce', 'Terruño', '12343455', 2),
('Laura', 'No esta', 'Contenido', '122242334', 1);


SELECT * FROM proveedor
SELECT * FROM contacto_proveedor

DELETE proveedor

UPDATE contacto_proveedor
SET proveedor_id =3
WHERE provedor_id =0;

UPDATE contacto_proveedor
SET proveedor_id =6
WHERE provedor_id =3;

--TODO: Relizar ejercicio completo de un diagrama relacional aplicando las restricciones y se continua con ALTER y DROP
--Alter table

--Agregar una clumnas
 
 use pruebaatributos;
 GO

SELECT *
FROM alumno;
TRUNCATE TABLE alumno;

-- Agregar una clomna
ALTER TABLE alumno
ADD telefono VARCHAR (20) NOT NULL
GO
--AGREGAR MAS DE UNA COLUMNA
ALTER TABLE alumno
ADD 
curp VARCHAR (18),
matricula VARCHAR (13) NOT NULL;


--MODIFICAR UN TIPO DE DATO 
ALTER TABLE alumno
ALTER COLUMN telefono VARCHAR (30);
GO

--AGREGAR RESTRICCIONES
--PRIMARY KEY

--ESTE CODIGO CREA UNA TABLA CON 0 REGISTRO APARTIR DE OTRA

SELECT TOP 0 *
INTO alumno2
FROM alumno;

SELECT *
FROM sys.objects AS o
WHERE o.parent_object_id = OBJECT_ID ('alumno2')
AND o.type IN ('PK', 'F', 'UQ', 'C', 'D')
ORDER BY o.type_desc;

--MUESTRA LOS DATOS DE UNA TABLA POR CODIGO
SELECT 
COLUMN_NAME,
DATA_TYPE
CAHRACTER_MAXIMUM_LENGTH
IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'alumno';







