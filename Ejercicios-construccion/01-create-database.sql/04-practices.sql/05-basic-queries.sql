/*=================================================
DLQ (Data query language) - Basic Queries

Archivo: 05-basic-queries.sql

Descripcion:se realizan consultas basicas con SELECT
=================================================*/

USE comercial_db;
GO
--Uso de SELECT*
/*==========================================================
SELECT * FROM nombre_tabla;

Nota: El asterisco indica que se seleccionaran todas las columnas de la tabla


No se recomienda utilizar siempre:
1)reduce la claridad de la consulta
2) puede afectar el consumo de recursos 
3) pueede afectar aplicaciones futuras


==============*/
SELECT * 
FROM productos;

--Proyeccion de la tabla productos

SELECT
codigo,
nombre,
precio
FROM productos;
SELECT
codigo,
nombre,
precio
FROM productos; 
GO
--ALIAS CON ESPACIOS

SELECT
codigo, AS [codigo product],
nombre, AS [nombre producto],
precio AS [precio producto]
FROM productos;

SELECT
codigo, AS 'codigo producto',
nombre, AS 'nombre producto',
precio AS 'precio producto'
FROM productos;

SELECT
codigo, AS 'codigo_producto',
nombre, AS 'nombre_producto',
precio AS 'precio_producto'
FROM productos;

--ALIAS DE TABLA (ES UTIL EN LOS JOINS Y EN LOS NOMBRES AMBIGÜOS)

SELECT
p.codigo,
p.nombre,
p.precio
FROM productos AS p;
GO

SELECT categorias.id_categoria,
categorias.nombre,
productos.id_producto,
productos.precio
FROM categorias
INNER JOIN
 
productos
ON categorias.categoria = productos.id_categoria
GO

SELECT c.id_categoria,
C.nombre,
P.id_producto,
p.precio
FROM categorias AS C
INNER JOIN
 
productos AS P
ON categorias.categoria = productos.id_categoria
GO

SELECT 
C.nombre, AS Codigo,
P.id_producto, AS [nombre producto]
p.precio AS 'Precio Unitario'
FROM productos AS p;
GO
SELECT productos AS P
--COLUMNAS CALCULADAS
--CAMPOS CALCULADOS U E-R (ATRIBUTO DERIVADO)

--SELECCIONAR ELCODIGO, NOMBRE,PRECIO,EXISTENCIA
--Y EL VALOR DEL INVENTARIO

SELECT
p.codigo, codigo_precio
p.nombre, nombre_producto
p.precio, precio_unitario
p.existencia,
(p.existencia * p.precio) AS precio_inventario
FROM productos AS p;

--TODO: operadores aritmeticos y mas ejercicios de campos calculados
/*==================================================
+ suma
-resta
*multiplicacion
/divicion
%modulo o residuo de la diviciont
==================================================*/

--seleccionar los empleados y calcular su salario anual
SELECT 
e.nombre,
e.apellido
e.salario AS salario_anual,
(salario * 12 ) AS salario_anual
FROM empleados AS e;
GO



--SELCCIONAR EL DETALLE DE LAS VENTAS MOSTRANDO 
--EL NUMERO DE VENTA, CANTIDAD, PRECIO, DESCUENTO
--CALCULAR EL IMPORTE BRUTO (CANTIDAD POR EL PRECIO)
--CALCULAR EL IMPORTE CON DESCUENTO (IMPORTE_BRUTO * DESCUENTO /100)
--CALCULAR EL IMPORTE NETO, (iMPORTE POR 1 MENOS EL DESCUENTO ENTRE 100)

SELECT
dv.id_ventas AS #venta,
dv.cantidad AS cantidad_vendida,
dv.precio AS [prescio de venta],
dv.descuento AS 'descuento de venta'
(dv.cantidad *dv.precio) AS importe_bruto, 
(dv.cantidad * dv.precio /100.0) AS importe_descuento
dv.cantidad * dv.precio * (1.0 - descuento / 100.0)

FROM detalle_ventas AS dv;
GO 




