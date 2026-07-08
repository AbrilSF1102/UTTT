# Construccion de Base de Datos con SQL-LDD

SQL(Structor Query Lenguaje) se divide en 5 grandes categorias:

1. ** DDL (Data Definicion Lenguaje)
2. DML (Data Manipulation Lenguaje)
3. DQL (Data Query Lenguaje) **
4. DCL (Data Control Lenguaje)
4. TCL (Transsaction Control Lenguaje)

## SQL-LDD 
**Lenguaje de Definicion de Datos**

se utiliza para **crear y modificar la estructura** de una case de datos

Con LDD trabajamos sobre los objetos de l base de datos:
-Base de datos
-Tablas
-vistas
-Indices
-restrcciones
-esquemas
-Store procedures
-Trigger
-Functions

**Comandos principales**

| Funcion | Funcion |  
| :--- | :--- | 
| CREATE | INT | 
| ALTER | DATE | 
| DROP | INT | 

Sirve para **Trabajar con la informacion almacenada**
Aqui no cambia la estructura sino los registros

**Comandos Principales**
| Comando | Funcion |  
| :--- | :--- | 
| INSERT | INT | 
| UPDATE | DATE | 
| DELETE | INT | 

## SQL-DQL

**LEnguaje consulta datos**
Su funcion es **Consuktar informacion**

**Comando Principal**
| Comando | Funcion |  
| :--- | :--- | 
| SELECT | Consultar Informacion | 

Generalmente se combina 
-WHERE
-ORDER BY
-GROUP BY
-HAVING
-JOIN (LEFT, INNER, CROSS, Y FULL)
-DISTRICT
-TOP / LIMIT
-Funciones de agrado (SUM AVG MX MIN COUNT)
-funciones de venta (Window fuction)

## Nomenclatura snake_case
**snake_case** Es la opcion mas recomendada de ahora si se busca una nomenclatura moderna, prtable y alineada con beunas practicas en distintos otores de base datos.

La razon es que funciona de forma conciente en **SQLServer, MySQL**
y especialmente en **postgreSQL**. Con snake_case evitan problemas de mayusculas y se hacen las consultas sean mas legibles

| Objeto | Convencion | Ejemplo |
| :--- | :--- | :--- |
| Base de datos | snake_case | Control escolar | 
| :--- | :--- | :--- |
| esquema | snake_case | ventas, rh, seguridad | 
| Tabla | Singular snake_case | Cliente pedido, detalle pedido| 
| Columna | snake_case |  Cliente_id, fecha_registro. nombre, correo_electronico | 
| PK | <tabla> | Cliente_id, categotia_id | 
| FK | Igual que la PK referente | Clienteid, productoid | 
| Tabla Puente | <tabla>, <tabla> | alumno_curso, provedor_producto | 


## Nombrar las restricciones##

-pk_cliente
-Fk_pedido_cliente -> pk_tablacategoria_tablareferenciada
-uq_cliente_corrreo_electronico
-ck_product_precio
-df_cliente_activo