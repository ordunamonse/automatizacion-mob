# TODO usar  nginx:stable-alpine
FROM  nginx:stable-alpine
# TODO Crear un volumen con el nombre /temp 
VOLUME /temp
#TODO  Eliminar de la imagen el contenido de la carpeta /usr/share/nginx/html/* 
RUN rm -rf /usr/share/nginx/html/*
#TODO: Copiar el contenido de la configuración de nginx.conf, mime.types y el directorio 
# sistema-ventas-front a sus respectivas carpetas. 
COPY nginx.conf /etc/nginx/nginx.conf
COPY mime.types /etc/nginx/mime.types
COPY ./sistema-ventas-front /usr/share/nginx/html

#Exponer  el puerto 80.
EXPOSE 80
#Ejecutar el comando: CMD[“nginx”, “-g”, “daemon off;”]
CMD [ “nginx”, “-g”, “daemon off;” ]
