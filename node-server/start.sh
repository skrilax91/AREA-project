#!/bin/sh

npx sequelize-cli db:create
npx sequelize-cli db:migrate

if [ "$NODE_ENV" == "production" ] ; then
    npm run start
else
    npm run dev
fi