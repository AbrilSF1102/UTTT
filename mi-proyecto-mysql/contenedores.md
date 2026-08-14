mi maestro me dio esto, para que sirve     # Contenedores de Sistemas de Gestores de Base de Datos
![ImagenDocker](../.img/imagen_docker.png)

## Imagenes

> Comandos para cada imagen

- descargar comando de postgres


docker pull postgres:14.22-trixie


- Descarga imagen de tutorial de Docker


docker pull docker/getting-started



docker pull postgres:14.22-trixie



docker pull mcr.microsoft.com/mssql/server:2022-latest




## Creación de contenedores

docker
docker run -d -p 80:80 **Nombre o codigo de la imagen**

Donde:
- -d detach   (background)
- -p puerto (el primer número de puerto no se cambia, el segundo si podemos cambiarlo)

### Contenedor de tutoria de docker
docker
docker run -d -p 80:8081 docker/getting-started:latest
docker run -d -p 80:80 bbb88


### Contenedor de MariaDB sin V olumen
docker
docker run -d --name Server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 e0236


### Contenedor de Mariadb con Volumen
docker
docker volume create v-mariadbg1
docker run -d --name Server-MariadbG1 -p 3343:3306 -e MARIADB_ROOT_PASSWORD=123456 -v v-mariadbg1:/var/lib/mysql e0236


### Contenedor de postgres con Volumen
docker
docker volume create v-postgresg1
docker run -d --name Server-PostgresG1 -p 5455:5432 \
-e POSTGRES_PASSWORD=123456 \
-v v-postgresG1:/var/lib/postgresql/data \
bbb88


### Contenedor de SQLSERVER con Volumen
docker
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=P@ssw0rd" \
-p 1450:1433 --name SQLServerG1 \
-d -v v-sqlserverg1:/var/opt/mssql/data/ \
e07b9



docker
docker volume create v-sqlserverg1
docker run -d --name Server-PostgresG1 -p 5455:5432 \
-e POSTGRES_PASSWORD=123456 \
-v v-postgresG1:/var/lib/mysql/data \
bbb8851608e3


v-sqlserverg1

### contenedor 
´´´
docker run -d --name Server-PostgresG1 -p 5434:5432 -e POSTGRES_PASSWORD=123456 postgres:14.22-trixie
´´´

docker run -d --name Server-SQLG1 -p 1434:1433 -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=Sql_123456!" mcr.microsoft.com/mssql/server:2022-latest



## Comando docker

| Comando | Descripción |
| :--- | :--- |
| *docker --version* | Muestra la version del Docker |
| *docker pull nombre_imagen* | Muestra una imagen de Docker Hub [Docker Hub](https://hub.docker.com/) |
| *docker images* | Muestra todas las imagenes |
| *docker run* | Crear un contenedor |
| *docker ps* | Visualiza los contenedores que estan en ejecución |
| *docker container ls* | Visualiza los contenedores que estan en ejecución |
| *docker ps -a* | Visualiza todos los contenedores |
| *docker container ls -a* | Visualiza todo los contenedores |
| *docker rm nombre_contenedor o ID* | Borrar contenedores |
| *docker run* | Crea contenedor |
| *docker stop nombre o ID* | Detiene el contenedor |
| *docker start nombre o ID* | Inisia un contenedor |
| *docker rm nombre o ID* | _Elimina contenedor que no esta en ejecución _|
| *docker rm -f nombre o ID* | Elimina contenedor que esta en ejecución |
| *docker volume ls* | Mostrar los volumenes que existen en docker |


$ docker volume v-sqlserverg1