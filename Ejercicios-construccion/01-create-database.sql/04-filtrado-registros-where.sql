/*=================================================
DLQ (Data query language) - Basic Queries

Archivo: 05-basic-queries.sql

Descripcion:se recuperan unicamente las filas que complen determinadas condiciones mediante la clausula where
ORDEN SINTACTICO
SELECT/ TOP/ DISTINC
FROM 
JOINS/ON
WHERE
GROUP BY
HAVING
ORDER BY

ORDER DE EJECUCION
FROM/JOINS (INNER,LEFT,RIGH, CROSS,FULL,SELF)
WHERE 
GROUP BY 
HAVING 
SELECT
DISTRICT
ORDER BY
TOP

=================================================*/

/*=================================================
sintaxis SELECT
    columna_1,
    columna_2,
    columna_n
FROM nombre_tabla
WHERE condicion;

Nota: Condicion puede ser relacional y a combinacion de esta con logica,
Nota: el select no filtra registros
=================================================*/
--Seleccionar el producto cuyo preccio es $200
SELECT  
    p.codigo As [Codigo],
    p.nombre AS [Producto],
    p.precio AS [precio]
    FROM producto AS p;
    WHERE precio = 200;

    --Seleccionar el cliente cuyo identificador es 25
SELECT
    c.id_ciente
    CONCAT (c.nombre
            c.apellido_materno) AS nombre_completo;
            c.correo

FROM clientes AS c
WHERE c id_cliente=25,

    --Comparacion de cadenas de Texto
    --Los valores de texto deben escribirse entre comillas simples

    --Seleccionar las categorias deonde l nombre se computo
    SELECT
    c.nombre AS [Categoria]
    FROM categoria AS c
    WHERE c.nombre= 'Computo';

--Seleccionar los datos del cliente con nombre de cliente 1
SELECT 
     c.id_ciente
    CONCAT (c.nombre
            c.apellido_materno) AS nombre_completo;
            c.correo

FROM clientes AS c
WHERE nombre = 'cliente1'

--Seleccionar los datos del empleado que no pertenescan al departamento
SELECT 
    e.id_empleado
    e.nombre
    e.id_departamento=1;
    GO

--Seleccionar los datos de los productos donde el precio superior a 490
SELECT 
    e.id_empleado
    e.nombre
    e.id_departamento=1;
FROM clientes AS c
WHERE nombre = 'cliente1'
WHERE p precio >490;
GO
--Seleccionr los datos de los productos con existencia critica interior a 
--10 unidades
--Seleccionar los datos de los empleados donde su salario sea de $30,000 en 
--adelante

--Selcionarr los datos de los productos donde sus precios sean de $10 o menos 

--Comparacionde de fechas

SELECT 
    v.id_venta  
    v.fecha
    v.id_cliente,
    v.id_empleado
    FROM ventas as v
    WHERE fecha='2025-12-24';

    --seleccionar los datos de las ventas realizadas en 2025
    SELECT 
    v.id_venta  
    v.fecha
    YEAR (v.fecha) AS [año],
    MONTH (v.fechas) AS [mes]
    FORMAT (v.fecha,'MMMM') AS [mes-ingles],
    FORMAT (v.fecha,'MMMM', 'es-ES') AS [mes-español],
    DAY(v.fecha) AS [dia],
    FORMAT(v.fecha,'DDDD') AS [mes-ingles],
    v.id_cliente,
    v.id_empleado
    FROM ventas as v
    WHERE MONTH (fecha)=4

    --Selccionar todas las ventas anteriores al primero de febrero del 2025
--moSTRAR LOS PRODUCTOS CON PRECCIO ENRE 200 Y 300 Y ADEMAS ENGAN MENOS DE 50 UNIDADES

SELECT 
p.codigo,
p.nombre,
p.precio,
p.existencia
FROM productos AS p
WHERE p.precio >= 200 
AND 
p.precio <= 300
AND p.existencia < 50
ORDER BY precio DESC;

--Mostrar productos con existencia menor a 10 o superior a 190
--Operador NOT 


SELECT 
p.codigo,
p.nombre,
p.precio,
p.existencia
FROM productos AS p
WHERE p.existencia < 10 
OR 
p.existencia > 190
ORDER BY existencia DESC;--Desc es para ue los revise de a/z o de 0 a 9

--Operador not
--mostrar los producos que no sean mayores a 400
SELECT 
p.codigo,
p.nombre,
p.precio,
p.existencia
FROM productos AS p
WHERE p.precio <= 400;
--Mostrar los empleados de los departamentos 1 y 2 que tengan un salario mayor a 25,000
SELECT 
e.id_empleado,
e.nombre,
e.salario,
e.id_departamento
FROM empleados AS e
WHERE (e.id_departamento =1
OR 
e.id_departamento =2)
AND e.salario > 25000;

--MOstrar los empleados que no tienen jefe
SELECT 
p.id_empleado,
p.id_departamento,
p.nombre,
p.id_jefe
FROM empleados AS p
WHERE p.id_jefe IS NOT NULL;  --Null se compara con is no con =

--operador BETWEEN
--Permite comprobar si un valor s eencuentra dentro de un rango inclusivo
/*====================================================
WHERE columna BETWEEN limite_inferior AND limite_superior
====================================================*/

-- Mostrar los empledos con salario entre $15,000 y $20,000, incluyendo ambos limites
SELECT 
e.id_empleado,
e.nombre,
e.salrio
FROM empleado AS e
WHERE e.salario BETWEEN 15000 AND 20000;
ORDER BY e.salario DESC;

SELECT 
e.id_empleado,
e.nombre,
e.salrio
FROM empleado AS e
WHERE e.salario >= 15000
AND
e.salario <= 20000;

--MOstrar los productos que los precios esten en el rango de 100 y 200
SELECT 
p.codigo,
p.nombre,
p.precio,
p.existencia
FROM productos AS p
WHERE p.precio NOT BETWEEN 100 AND 400;




--Operador IN 
--Permite comparar una columna con una lista de valores



UPPER(FORMAT(v.fecha,'MMMM')) AS [Mes_venta],
UPPER(FORMAT(v.fecha,'dddd')) AS [dia_venta],
DATEYEAR (YEAR(v.fecha)) AS [año_venta]
FROM ventas AS v
WHERE v.fecha BETWEEN '2025-01-01' AND '2025-01-10';
ORDER BY [cliente] ASC;
--Mostrar los precios que no esten entre 100 y 400
SELECT
p.codigo,
p.nombre,
p.precio,
p.existencia
FROM productos AS p
WHERE p.precio NOT BETWEEN 100 AND 400;




--Operador IN 
--Permite comparar una columna con una lista de valores
/*====================================================
WHERE columna IN (valor_1, valor_2, valor_n)
======================================================*/
--Mostrar_productos pertenecientes a las categorias 1,7 o 12
SELECT
p.codigo,
p.nombre,
p.precio,
p.existencia,
p.id_categoria
FROM productos AS p
WHERE p.id_categoria IN (1,7,12);

ORDER BY p.id_categoria;

SELECT
p.codigo,
p.nombre,
p.precio,
p.existencia,
p.id_categoria
FROM productos AS p
WHERE p.id_categoria 


ORDER BY p.id_categoria;

--Mostrar todos los productos que no pertenecen a la categoria 1,7,12
SELECT
p.codigo,
p.nombre,
p.precio,
p.existencia,
p.id_categoria
FROM productos AS p
WHERE p.id_categoria IN (1,7,12);

ORDER BY p.id_categoria;

/*==============================TODO: OPERADOR LIKE========================================

permite buscar patrones en vaalores de texto
sintaxis
WHERE columna LIKE patron
Los patrones pueden contener comodines
Comodin  Simplificado
    %      Cero, uo o varios valores
    _      exactamente un caracter
    [abc]  un caracteer incluido en la lista     
    [a-f]  un caracter incluido en el rango
    [^abc] un caracter incluido en las lista
=========================================================================================*/

--comodin %
--El simbolo % reoresenta cantidad dee caracteres, incluyendo cero caracteres

--columna
--WHERE nombre LIKE 'Clientes%'
--Valores que comienzan con cliente

--Termina
--WHERE correos LIKE '%mail.com'
--Valores que terminan con mail.com

--Contiene
--WHERE nombre LIKE '%a%'
--contiene el caracter a en cualquier posicion

--Buscar codigos que ccomiencen con P001

SELECT 
p.codigo,
p.nombre,
p.precio,

FROM productos AS p
WHERE p.codigo LIKE 'P001%';

--Buscar los correos de los clientes que terminen exactamente con 10@mail.com

SELECT
c.id_cliente,
c.nombre,
c.correo
FROM clientes AS c
WHERE c.correo LIKE '%10@mail.com';


--Mostrar los nombres que contienen el caracter 1 

SELECT
c.id_cliente,
c.nombre,
c.correo
FROM clientes AS c
WHERE c.nombre LIKE '%1%';

--cOMODIN DE U CARACTER
--EL GUION BAJO _ REPRESENTA EXACTAMENTE UN CARACTER

--MOSTRAR LOS CODIGOS CON P000 Y EXACTAMENTE UN CARACTERER ADICIONAL

SELECT
p.codigo,
p.nombre,
p.precio,
FROM productos AS p
WHERE p.codigo LIKE 'P000_';


--Patrones con corchetes 
SELECT
p.codigo,
p.nombre,
p.precio,
FROM productos AS p
WHERE p.codigo LIKE 'P000[^1-5]';

--Buscar un guion lateral 
--EN LIKE, _es un comodin 
--LAs ciuddaes de esta base de datos, contienen guiones bajos, por ejemplo:

--CIudad _1_1
--para buscarr un guion bajo lateral medinte corchetes se ouede utilizar

SELECT

FROM CIUDADES AS c
WHERE c.nombre LIKE '%[_]%'; --SIgnifica un caracter de _ literal









