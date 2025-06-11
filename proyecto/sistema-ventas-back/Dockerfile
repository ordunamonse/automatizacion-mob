# TODO usar node 18.17.1-alpine
FROM node:18.17.1-alpine
# TODO Crear un volumen /usr/src/app
VOLUME /usr/src/app
#TODO  Copiar package.json y package-lock.json
COPY package*.json ./
#TODO ejecutar npm install
RUN npm install
#TODO: Copiar el contenido al contenedor
COPY . .
#Exponer el puerto 3000
EXPOSE 3000
#Ejecutar CMD ["node", "index.js"]
CMD [ "node", "index.js" ]


