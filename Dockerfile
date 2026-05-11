# 1. Usar una imagen de Node para construir el proyecto
FROM node:20-alpine AS build-stage
# 2. Establecer el directorio de trabajo
WORKDIR /app

# 3. Copiar archivos de dependencias
COPY package*.json ./

# 4. Instalar dependencias
RUN npm install

# 5. Copiar el resto del código del proyecto
COPY . .

# 6. Construir la aplicación para producción
RUN npm run build

# 7. Usar Nginx para servir el contenido estático
FROM nginx:stable-alpine AS production-stage
# 8. Copiar los archivos construidos desde el build-stage a Nginx
COPY --from=build-stage /app/dist /usr/share/nginx/html

# 9. Exponer el puerto 80
EXPOSE 80

# 10. Arrancar Nginx
CMD ["nginx", "-g", "daemon off;"]