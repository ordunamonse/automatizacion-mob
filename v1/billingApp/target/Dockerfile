# Indicar la imagen base (nginx) 
# alpine es una distribucion de linux muy ligera
FROM nginx:alpine

# TODO: Instalar java en la version 8
# TODO: Ejecutar un comando en terminal
# apk es un comando de alpine
# Ejecutar un comando como si estuvieramos en terminal  "RUN" 
# apk es propio del comando alpine
# -U La primera opcion indica actualizar/agregar el paquete y despues despegar openjdk8
# Despues elimina el cache.
RUN apk -U add openjdk8 \
    && rm -rf /var/cache/apk/*

# ttf-dejavu libreria
RUN apk add ttf-dejavu

# TODO: Instalar los microservicios
ENV JAVA_OPTS=""

# TODO: Agregar variables de entorno
ARG JAR_FILE

ADD ${JAR_FILE} app.jar

# TODO: Transferir los archivos a nginx
VOLUME /tmp

# Eliminar los archivos del directorio de enginx (/usr/shere/nginx/html)
RUN rm -rf /usr/share/nginx/html/*

# TODO: Copiar la configuracion del archivo nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar la aplicacion de angular 
COPY dist/billingApp /usr/share/nginx/html


# Copiar el archivo appsherr.sh a la imagen 
COPY appshell.sh appshell.sh
RUN chmod +x appshell.sh

# TODO: Exponer los puertos necesarios (80, 8080)
EXPOSE 80 8080

# TODO: Ejecutar el script .sh 
ENTRYPOINT ["sh", "/appshell.sh"]