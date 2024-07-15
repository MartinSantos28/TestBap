# Usa una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la aplicación al directorio de trabajo
COPY . .

# Compila la aplicación de React
RUN npm run build

# Instala el servidor HTTP estático para servir el contenido compilado
RUN npm install -g serve

# Expone el puerto en el que la aplicación correrá
EXPOSE 5000

# Comando por defecto para correr la aplicación
CMD ["serve", "-s", "build"]
