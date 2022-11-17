FROM node:18.12-alpine3.15 AS development

WORKDIR ./src

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "npm", "start" ]