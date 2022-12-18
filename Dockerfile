FROM node:14-alpine

WORKDIR /app

COPY package.json package-lock.json tsconfig.json ./
COPY ./public ./public
COPY ./src ./src

RUN rm -rf node_modules && npm install

EXPOSE 3000

CMD npm start;