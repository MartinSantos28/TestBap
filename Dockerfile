# Usa una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo en el contenedor
WORKDIR /app


COPY package*.json ./


RUN npm install


COPY . .


RUN npm run build


RUN npm install -g serve


EXPOSE 5000


CMD ["serve", "-s", "build"]
