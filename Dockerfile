FROM node:lts-alpine3.19

WORKDIR /app

COPY package.json /app/package.json

RUN npm install

COPY . . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start:prod"]

