FROM node:lts-alpine

WORKDIR /home/onlinebot

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install

COPY . .

CMD [ "node", "onlinebot.js" ]