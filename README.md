<img width="600%"
src="https://www.utng.edu.mx/CursosCisco/img/logoUtng.jpg" />



# LICENCIATURA EN INGENIERÍA EN TECNOLOGÍAS DE LA INFORMACIÓN ÁREA REDES INTELIGENTES Y CIBERSEGURIDAD

Automatizacion de infraestructura digital 

Unidad 1: Entornos de desarrollo en la automatizacion de redes

Alumna: Monserrat Orduña Basaldua

Grupo: GIRI5091

Docente: Eric Domenzain Morales



# INTRODUCCIÓN 
En la actualidad, la automatización de redes se ha convertido en una herramienta importante para los profesionales en tecnologías de la información, ya que permite agilizar procesos, reducir errores humanos y mejorar la eficiencia en la gestión de infraestructuras digitales. Este reporte tiene como objetivo documentar el proceso de instalación, configuración y verificación de herramientas clave que permiten automatizar entornos de red, facilitando así el despliegue de servicios mediante contenedores.
Durante el desarrollo de esta unidad, se trabajó con herramientas ampliamente utilizadas en la industria, como Docker Engine, Docker Compose y Docker Swagger. Estas tecnologías ofrecen una plataforma robusta para la virtualización a nivel de aplicación, permitiendo empaquetar software y sus dependencias en contenedores portables, fáciles de replicar en distintos entornos. Asimismo, se hizo uso de Visual Studio Code (VSCode) como entorno de desarrollo, junto con Git para el control de versiones y la colaboración en línea mediante repositorios en GitHub.
También se utilizó una máquina virtual de Ubuntu 24.04.2 para la descarga de los repositorios de GitHub y así poder mostrar la web.
Además, se incluyen recursos obtenidos de la comunidad de desarrollo que resultaron útiles como apoyo en la implementación. La finalidad de este reporte es mostrar un entorno completamente funcional que siente las bases para futuros despliegues automatizados en la gestión de redes y aplicaciones.

Desarrollo
# Descripción de las herramientas utilizadas para  la automatización

# Docker Engine
<img width="60%"
src= "https://tse4.mm.bing.net/th?id=OIP._OEGZP-zbO63lgEyW88X2wHaEK&pid=Api&P=0&h=180"/>

# Descripción:

Docker Engine es una plataforma de código abierto que permite desarrollar, empaquetar y ejecutar aplicaciones dentro de contenedores. Un contenedor es una unidad ligera y portátil que incluye todo lo necesario para ejecutar una aplicación: código, librerías, dependencias y archivos de configuración. A diferencia de las máquinas virtuales, los contenedores comparten el núcleo del sistema operativo, lo que los hace mucho más rápidos y eficientes.

# Características principales:
- **Virtualización a nivel de sistema operativo (OS-level).**

- **Aislamiento de aplicaciones.**

- **Portabilidad entre entornos (desarrollo, pruebas y producción).**

- **Alta eficiencia en el uso de recursos.**

# Beneficios:
- **Reducción del tiempo de despliegue.**

- **Eliminación de problemas de compatibilidad.**

- **Automatización de la infraestructura.**
#  Sitio oficial: 
    https://www.docker.com


# Docker Compose
<img width="60%"
src= "https://ostechnix.com/wp-content/uploads/2019/11/introduction-to-docker-compose.png"/>

# Descripción:
Docker Compose es una herramienta que permite definir y administrar entornos multicontenedor. Utiliza un archivo YAML (docker-compose.yml) para describir la configuración de los servicios, redes y volúmenes necesarios para una aplicación. En lugar de iniciar contenedores uno por uno, Compose permite levantarlos todos con un solo comando.

# Características principales:
- **Definición declarativa de servicios.**

- **Soporte para múltiples redes y volúmenes.**

- **Escalado automático de servicios (docker-compose up --scale).**

- **Integración con Docker Swarm para orquestación.**

# Beneficios:

- **Simplicidad en el despliegue de aplicaciones complejas.**

- **Reproducibilidad del entorno en diferentes equipos.**

- **Integración con herramientas de CI/CD.**

# Ejemplo básico de archivo YAML:
```shell
version: "3"
services:
  web:
    image: nginx:alpine
    ports:
      - "8080:80"
```

#  Documentación:
 https://docs.docker.com/compose/
 
# Docker Swagger
<img width="60%"
src= "https://mshaeri.com/blog/wp-content/uploads/2022/02/spring-swagger-docker-mysql.jpg" />

# Descripción:
Swagger, ahora parte del proyecto OpenAPI, es un conjunto de herramientas que permite diseñar, construir, documentar y consumir APIs REST. Cuando se integra en entornos Docker, Swagger puede ejecutarse dentro de un contenedor para brindar documentación interactiva de APIs, facilitando el desarrollo y las pruebas.

# Características principales:
- **Interfaz gráfica para probar endpoints.**
- **Validación automática de peticiones y respuestas.**
- **Generación de documentación en formato OpenAPI (JSON o YAML).**
- **Compatible con múltiples lenguajes backend (Node.js, Python, Java, etc.)**

# Beneficios:
- **Mejora la comprensión de la API entre desarrolladores.**
- **Permite probar peticiones sin necesidad de herramientas externas.**
- **Facilita el versionado y la mantenibilidad del servicio.**
# Casos de uso en Docker:
- **Ejecutar Swagger UI o Swagger Editor como contenedores.**
- **Documentar APIs desplegadas en otros servicios del entorno.**

# Sitio oficial: 
https://swagger.io/tools/swagger-ui/

# Procedimiento de instalación:

#  1. Instalación técnica de herramientas necesarias: VSCode y plugins.

## Visual Studio Code (VSCode)

# Descripción:
VSCode es un editor de código fuente ligero y multiplataforma desarrollado por Microsoft. Es ampliamente usado para desarrollo con soporte de extensiones y herramientas de automatización como Docker y Git.

# Pasos para instalar:

1.1 Ir al sitio oficial:

https://code.visualstudio.com/

1.2 Seleccionar la versión según tu sistema operativo:

- **Windows (.exe)**
- **macOS (.dmg)**
- **Linux (.deb o .rpm)**

1.3 Descargar y ejecutar el instalador.

1.4 En Windows, marcar las siguientes opciones:

- **Agregar al PATH.**
- **Registrar como editor por defecto.**
- **Habilitar apertura con clic derecho.**

1.5 Una vez instalado, abrir el programa.

#  Plugins recomendados para VSCode

1.1 Abrir la vista de extensiones (ícono de bloques en el lateral izquierdo o Ctrl + Shift + X).

1.2 Buscar e instalar los siguientes plugins:
- **Docker → Para visualizar contenedores, imágenes y volúmenes.**
- **YAML → Para mejor edición de archivos .yml.**
- **GitLens → Potente herramienta para trabajar con Git.**
- **Remote - Containers (opcional) → Para trabajar directamente dentro de contenedores.**
- **Prettier (opcional) → Para formatear código.**

1.3 Reiniciar VSCode para aplicar los cambios.

#  2. Instalación técnica de Docker 

ir a https://docs.docker.com/engine/install/ubuntu/ 

## Instalar usando el apt repositorio

Antes de instalar Docker Engine por primera vez en un nuevo host, debe configurar el aptrepositorio de Docker. Después, podrá instalar y actualizar Docker desde el repositorio.

1. Configurar apt el repositorio de Docker.
```shell
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

2. Instalar los paquetes de Docker.
Para instalar la última versión, ejecute:
```shell
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

Para instalar una versión específica de Docker Engine, comience enumerando las versiones disponibles en el repositorio:
```shell
# List the available versions:
apt-cache madison docker-ce | awk '{ print $3 }'

5:28.2.1-1~ubuntu.24.04~noble
5:28.1.0-1~ubuntu.24.04~noble
```
Seleccione la versión deseada e instálela:

```shell
VERSION_STRING=5:28.2.1-1~ubuntu.24.04~noble
sudo apt-get install docker-ce=$VERSION_STRING docker-ce-cli=$VERSION_STRING containerd.io docker-buildx-plugin docker-compose-plugin
```
3. Verifique que la instalación sea exitosa ejecutando la hello-worldimagen:
```shell
sudo docker run hello-world
```
   Este comando descarga una imagen de prueba y la ejecuta en un contenedor. Al ejecutarse, el contenedor imprime un mensaje de confirmación y sale.

# Pasos posteriores a la instalación de Docker Engine en Linux

Para crear el docker grupo y agregar su usuario:
1. Crea el docker grupo.
```shell
sudo groupadd docker
```
2. Añade tu usuario al docker grupo.
```shell
sudo usermod -aG docker $USER
```
3. Cierre sesión y vuelva a iniciarla para que se vuelva a evaluar su membresía del grupo.

    Si está ejecutando Linux en una máquina virtual, puede que sea necesario reiniciar la máquina virtual para que los cambios surtan efecto.

    También puede ejecutar el siguiente comando para activar los cambios en los grupos:

```shell
newgrp docker
```
4. Verifique que pueda ejecutar docker comandos sin sudo.

   Este comando descarga una imagen de prueba y la ejecuta en un contenedor. Al ejecutarse, el contenedor imprime un mensaje y sale.

```shell
docker run hello-world
```

Si inicialmente ejecutó los comandos CLI de Docker sudo antes de agregar su usuario al docker grupo, es posible que vea el siguiente error:
```shell
WARNING: Error loading config file: /home/user/.docker/config.json -
stat /home/user/.docker/config.json: permission denied
```
Este error indica que la configuración de permisos para el ~/.docker/ directorio es incorrecta, debido a que se utilizó el sudocomando anteriormente.

Para solucionar este problema, elimine el ~/.docker/directorio (se vuelve a crear automáticamente, pero se pierden todas las configuraciones personalizadas) o cambie su propiedad y permisos utilizando los siguientes comandos:

```shell
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R
```
Linux mint:
http://www.linuxtechi.com/how-to-install-docker-on-linux-mint/

# 3. Instalación técnica de Git
## Descripción:
Git es un sistema de control de versiones distribuido. Permite rastrear cambios y trabajar en colaboración mediante plataformas como GitHub o GitLab.

## Sitio oficial:
https://git-scm.com/downloads

# Pasos para instalar:
3.1  Descargar el instalador según el sistema operativo:
- **Windows → .exe**
- **macOS → .dmg**
- **Linux → mediante apt o dnf**

3.2 Ejecutar el instalador y seguir los pasos. En Windows, puedes dejar todas las opciones por defecto.

3.3 Verificar que Git se instaló correctamente:

Comando
 ```shell
 git --version
 ```
3.4 Configurar tu usuario global (obligatorio si vas a usar GitHub):
 ```shell
 git config --global user.name "Nombrede Ususrio"
 ```
 ```shell
git config --global user.email "tucorreo@ejemplo.com"
 ```
3.5 (Opcional) Ver configuraciones activas:
 ```shell
git config --list
 ```

# Evidencia de pruebas de verificación de funcionamiento.

## Ejecutar la imagen “hello-world” para verificar el funcionamiento de docker. 

![alt text](<Captura desde 2025-06-10 14-09-34-2.png>)

## Ejecutar un archivo “.YML” para verificar el funcionamiento de contenedores. 

![alt text](<Captura desde 2025-06-10 14-03-41.png>)


# Comandos Basicos
Lista de comandos basicos de docker

- **Listar las imagenes disponibles en el sistema**
 ```shell
 docker ps -a
 ```

- **Inicializar un contenedor:**
``` shell
docker start [nombre_o_ID] 
```
- **Crear y ejecutar un contenedor**
```shell
docker run [nombre_imagen]
```
- **Este comando se usa para levantar (iniciar) todos los servicios definidos en un archivo docker-compose.yml de forma automática y en segundo plano.**
````shell
docker-compose up -d
````

- **Ver los Logs de los contenedores:**
``` shell
docker logs [nombre_contenedor]
```

- **Detener los contenedores:**
``` shell
docker stop [nombre_contenedor]
```

- **Eliminar un contenedor:**
``` shell
docker rm [nombre_o_ID]
```

-**Eliminar una imagen:**
``` shell
docker image rm [nombre_o_ID]
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

# Comando para lleves

cat  C:\Users\ordun\.ssh\id_ed25519.pub

docker compose -f stackdb.yml pull
docker compose -f stackdb.yml up -d

# Conclusión
Nombre del estudiante: Monserrat Orduña Basaldua 

En este trabajo se abordaron los principales aspectos necesarios para la implementación de un entorno de automatización de redes utilizando herramientas actuales del ámbito tecnológico. A través del desarrollo de la actividad, se llevaron a cabo procesos como la instalación de Visual Studio Code con los plugins adecuados, la configuración de Git para el control de versiones, y la instalación y verificación del correcto funcionamiento de Docker y Docker Compose, herramientas clave para el despliegue de servicios en contenedores.

Uno de los resultados más importantes fue la verificación exitosa del entorno mediante la ejecución de la imagen hello-world y la puesta en marcha de un archivo .yml para levantar un contenedor de NGINX. Esto demuestra que el sistema cuenta con una infraestructura funcional para automatizar procesos y manejar aplicaciones distribuidas. Además, se logró integrar todo el proceso en un archivo README documentado y versionado mediante GitHub, lo cual promueve buenas prácticas de documentación y trabajo colaborativo.

Entre los hallazgos más relevantes se encuentra la comprensión del valor que aportan los contenedores en el ciclo de vida del desarrollo, así como la utilidad de herramientas como Docker Compose para simplificar tareas complejas. Esta actividad permitió adquirir no solo habilidades técnicas, sino también una visión más clara del flujo de trabajo en entornos reales.

Este ejercicio fue importante para sentar las bases del desarrollo automatizado de redes, mejorando la eficiencia, la organización y la adaptabilidad del entorno de trabajo para proyectos futuros.

# Referencias bibliograficas
 imagen utng
 https://www.utng.edu.mx/CursosCisco/img/logoUtng.jpg"

Imagen docker Engine

https://tse4.mm.bing.net/th?id=OIP._OEGZP-zbO63lgEyW88X2wHaEK&pid=Api&P=0&h=180"

sito web 

https://www.docker.com

imagen docker Compose

"https://ostechnix.com/wp-content/uploads/2019/11/introduction-to-docker-compose.png"/>

sitio web 

 https://docs.docker.com/compose/

 imagen docker Swagger

 https://mshaeri.com/blog/wp-content/uploads/2022/02/spring-swagger-docker-mysql.jpg"

 sitio web

 https://swagger.io/tools/swagger-ui/

 Visual studio 

 https://code.visualstudio.com/

instalacion Docker

 https://docs.docker.com/engine/install/ubuntu/ 

 instalacion Linux mint
 
http://www.linuxtechi.com/how-to-install-docker-on-linux-mint/

Instalacion de  git

https://git-scm.com/downloads

Repositorio docker

(http://hub.docker.com/)