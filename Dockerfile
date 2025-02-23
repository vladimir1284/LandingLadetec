# Etapa 1: Construcción de la aplicación
FROM node:18 AS builder
WORKDIR /app

# Copia los archivos de dependencias
COPY package.json pnpm-lock.yaml ./

# Instala pnpm y las dependencias
RUN npm install -g pnpm && pnpm install

# Copia el resto del código y ejecuta el build (se asume que los archivos estáticos se generan en /app/build)
COPY . .
RUN pnpm run build

# Etapa 2: Imagen final con script de inicio para actualizar el contenido del volumen
FROM alpine:latest

# Instalamos bash (opcional, pero recomendable para scripts complejos)
RUN apk add --no-cache bash

# Directorio donde se encuentran los archivos construidos (copia interna de la imagen)
COPY --from=builder /app/build /built-files

# Creamos el directorio destino
RUN mkdir -p /landing-ladetec

# Copiamos el script de inicio y le damos permisos de ejecución
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Definimos el script de entrada
CMD ["/entrypoint.sh"]