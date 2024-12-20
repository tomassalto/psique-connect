# Dockerfile para Astro Frontend
FROM node:18

# Instalar pnpm globalmente
RUN npm install -g pnpm

# Crear y setear el directorio de trabajo
WORKDIR /usr/src/app

# Copiar los archivos del package manager
COPY package.json pnpm-lock.yaml ./

# Instalar dependencias
RUN pnpm install --frozen-lockfile

# Copiar el resto del código fuente
COPY . .

# Puerto para el servidor
EXPOSE 4321

# Comando para ejecutar la app en modo desarrollo
CMD ["pnpm", "dev", "--host"]
