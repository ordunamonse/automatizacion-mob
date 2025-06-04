# Usar la imagen base con JRE 17 en alpine
FROM eclipse-temurin:17-alpine

# Crear un nuevo grupo llamado "admin" para el almacenamiento
RUN addgroup -g 1028 devopsc\
    && adduser -D -G devopsc admin

# Crear la carpeta "tmp" para el almacenamieto del cache
VOLUME /tmp

# Establecer una variable JAR_FILE para la ruta del archivo JAR_FILE
ARG JAR_FILE

# Establecer una variable en el entorno DB_PASSWORD con el valor del argumento
ARG DB_PASSWORD

# Agregar las variables al .env
ENV DB_PASSWORD=$DB_PASSWORD

# Copiar el archivo JAR
COPY ${JAR_FILE} /tmp/app.jar

# Generar los permisos
RUN chown -R admin: devopsc /tmp

# Cambiar al usuario admin
USER admin

# Ejecutar el JAR para iniciar el contenedor
ENTRYPOINT [ "java", "-jar", "/tmp/app.jar" ]