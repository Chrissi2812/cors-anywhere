FROM node:12-alpine

WORKDIR /usr/src/app
COPY package*.json ./
COPY lib ./
COPY server.js ./
RUN npm install

ENV CORSANYWHERE_WHITELIST=https://www.google.de
ENV PORT=8080

EXPOSE $PORT

CMD [ "node", "server.js" ]
