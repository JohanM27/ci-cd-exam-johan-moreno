FROM node:18-alpine

WORKDIR /app

# Copia solo package.json y package-lock.json primero para aprovechar el cache
COPY package*.json ./

# Instala dependencias de producción
RUN npm install --production

# Copia el resto del código
COPY . .

# Expone el puerto 80 (ajusta si tu app usa otro)
EXPOSE 80

# Usa array para CMD
CMD ["node", "index.js"]
