FROM node:16-alpine

WORKDIR /app

COPY package.json yarn.lock tsconfig.json astro.config.mjs ./
COPY ./public ./public
COPY ./src ./src

RUN rm -rf node_modules && yarn install --frozen-lockfile && yarn cache clean

EXPOSE 3000

CMD npm start -- --host 0.0.0.0