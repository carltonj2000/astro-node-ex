FROM node:18-bullseye-slim as build

WORKDIR /app
COPY package*.json ./
COPY tsconfig.json .
COPY astro.config.mjs .
RUN npm install
COPY ./src ./src
RUN npm run build

FROM node:18-bullseye-slim
#FROM gcr.io/distroless/nodejs:18
WORKDIR /app
COPY --from=build /app/node_modules/ ./node_modules/
COPY --from=build /app/dist/ ./dist/
EXPOSE 3000
ENV HOST=0.0.0.0
ENTRYPOINT ["node", "./dist/server/entry.mjs"]
#CMD ["./dist/server/entry.mjs"]
