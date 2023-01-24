FROM node:18.11.0

WORKDIR apps

COPY src/package*.json ./

RUN npm install

COPY ./src/ .

EXPOSE 8080

CMD ["node", "server.js"]