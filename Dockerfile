FROM node:12-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY app.js .

EXPOSE 8088

CMD [ "node", "app.js" ]