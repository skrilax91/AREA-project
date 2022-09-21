FROM node:16.15-alpine3.14

# We have to install nodemon globally before moving into the working directory
RUN npm install -g nodemon

WORKDIR /opt/app/node-server


COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000