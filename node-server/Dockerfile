FROM node:16.15-alpine3.14

RUN npm install -g nodemon

WORKDIR /opt/app/node-server
COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]