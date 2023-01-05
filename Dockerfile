FROM node:16-alpine

WORKDIR /app

COPY package.json yarn.lock tsconfig.json ./
COPY ./public ./public
COPY ./src ./src

RUN rm -rf node_modules && yarn install --frozen-lockfile && yarn cache clean

EXPOSE 3000

CMD yarn dev --host --port 3000