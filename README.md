# Docker

## Instalacion de Docker
INSTALACION
ir a https://docs.docker.com/engine/install/ubuntu/ y seguir las instrucciones

Linux mint:
http://www.linuxtechi.com/how-to-install-docker-on-linux-mint/


## Comandos Basicos
Lista de comandos basicos de docker

- **Listar las imagenes disponibles en el sistema**
 ```shell
 docker ps -a
 ```

- **Inicializar un contenedor:**
``` shell
docker start [nombre o ID] 
```
- **Ver los Logs de los contenedores:**
``` shell
docker logs [nombre contenedor]
```

- **Detener los contenedores:**
``` shell
docker stop [nombre contenedor]
```

- **Eliminar un contenedor:**
``` shell
docker rm [nombre o ID]
```

-**Eliminar una imagen:**
``` shell
docker image rm [nombre o ID]
```


# Repositorio de Docker 
[Repositorio] (http://hub.docker.com/)

# Crear imagen a partir de un archivo Dockerfile
```shell
docker build -t nameapp:tag --no-cache                      --build-arg JAR_FILE=target/*.jar .

# levantar un contenedor a partir de una imagen
```shell
docker run -p 80:80 -p 80808:8080 --name                      containername nameapp:tag
```


# Guia basica de GIT
- Inicializar GIT
```shell
   git init
```

- Cambiar el nombre de las ramas
```
   git branch -m [rama-anterior]
   [nuevo-nombre]

   git branch -m master main
```
Pasar los archivos (modificados y/o agregados) al area de preparacion
(Staging area)

```
git add .

```
- Realizar el commit
```
git commit -m "Creacion del 
Proyecto"
```

- Configuracion de usuario y correo
```
   git config --global user.name 
   "Monserrat Orduña Basaldua"

   git config --global user.email 
   "ordunamonse28@gmail.com"
```

- Para crear Llaves 
```
ssh-keygen -t ed25519 -C "ordunamonse28@gmail.com"
```

#
cat  C:\Users\ordun\.ssh\id_ed25519.pub

