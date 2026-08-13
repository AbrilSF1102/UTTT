# Ejercicios MOdelos E-R
1. Ejercicio 1
En un hospital se registra informacion de sus pacientes 
## De cada paciente se desea almacenar:

- Algo que lo identifique
- Nombre
- Fecha de nacimiento

## De un expediente medico sse almacena:

- Numero de expedientes
- Fecha de apertura
- Tipo de sangre

## Reglas del negocio

1. Cada paciente debe tener exactamnete un expediente medico
2. Cada expediente pertenece a un unico paciente
3. No puede existir un paciente sin expediente
4. No puede existir un paciente si expediente

## Resultado Modulo E-R
![Hospital] (../img/E-R/Ejercicio1.jpg)

2. Ejercicio 2 
Una un1 administra profesores y cursos
>De cada profesor se almacena:

- claveProfesor
- nombre
- especialidad

>De cada curso se almacena:

- Identifica del curso 
- nombre del curso



3. Ejercio
Una escuela adminisstra alumnos y materias de cada alumno se almacena 
- Matricula
- Nombre
- Semestre  

## De cada materia se almacena
- Claave de al matria
- Nombre de la matria 
- Creditos 

## Reglas del negocio

- Un alumno puede inscribirse en varias matertias
- Una materia puede temer muchos alumnos inscritos
- Puede existir una materia sin alumnos inscritos
- Todo alumno debe de estar inscrito en almenos una materia
- De cada inscripcion se debe aalmacenar fechad e inscripcion y calificacion final


# Inscribe #

4. Ejercicio 4
Una empresa encargada de realizar venta de productos:
>De cada cliente se almacena:
- Numero de cliente que lo identifica
- Y su nombre de cliente el cual es una persona moral
- RFC

>La empresa realiza pdidos en los cuales almacena lo siguiente 
- Numero de pedido
- fecha

> LA empresa tambien almacena producos de lso cuales registra lo siguiente
- Numero de producto
- nombre 
- precio

>AL realiza los pedidos deben registrar la cantidad de los productos pedios y su precio

>reglas del negoscio

1. UN pedido puede realizar muchos pedidos
2. Cada pedido pertenece a un solo cliente
3. Un pedido pertenece a un solo cliente
4. Un producto puede aparecer en muchos pedidos
5. UN pedido debe contener varios productos
6. Un producto puede no haber sido venido
7. El detalle del pedido no existe sin pedido
8. EL detalle de pedido no existe sin producto
9. EL detalle almacena cantidad y precio de venta


-- Datos para las tablas
 INSERT INTO  paciente

VALUES(1,'Jose Domingo', 'Perez', 'Hernandez', '1995-03-21');

SELECT GETDATE()

VALUES(2,'Jose Luis', 'Herrera' ,'Gallardo' '1978-04-06');

VALUES (3, 'Parinko', 'Cabeza', 'Grande', 1983-04-06), (4,'Laura', 'Robledo', 'Ddavalos', '2005,12,20');

--INSERTAR EXPEDIENTES
INSERT INTO expediente
VALUES (1, GETDATE(), '+0',1);

INSERT INTO expediente
VALUES(2,'2026-06-17','+0,2);

SELECT * FROM expediente