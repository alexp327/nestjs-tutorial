FROM node:18.17.1-alpine as local-base

WORKDIR /app

FROM local-base as local

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start:dev"]