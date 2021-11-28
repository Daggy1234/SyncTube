FROM node:alpine

COPY build ./build
COPY res ./res
COPY package.json ./
COPY default-config.json ./
EXPOSE 4200

RUN npm install ws

CMD npm start
