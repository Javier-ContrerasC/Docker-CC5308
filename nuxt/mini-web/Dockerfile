# Partimos con node 22 como imagen base
FROM node:22-alpine AS build

#RUN apk add --no-cache make g++ python3 libc6-compat

WORKDIR /app

COPY package*.json /app/

# Se instalan las dependencias
RUN npm install -g npm@11.4.0
RUN npm install

COPY . .

# Buildea el proyecto
ENV NODE_OPTIONS=--max-old-space-size=2048
RUN npm run build

# Build Stage 2

FROM node:22-alpine

WORKDIR /app

# Only `.output` folder is needed from the build stage
COPY --from=build /app/.output .output
COPY --from=build /app/package.json .
COPY --from=build /app/node_modules ./node_modules

# Cambiamos el puerto y el host
ENV PORT=8082
ENV HOST=0.0.0.0
# Expone el puerto para poder acceder al server desde el pc
EXPOSE 8082

# Abre el server
CMD ["node", "/app/.output/server/index.mjs"]

