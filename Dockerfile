FROM node:22.13.1

WORKDIR /app

COPY package*.json ./

RUN npm install -g @nestjs/cli

RUN npm install

COPY . .

RUN npm run build


CMD ["npm", "run", "start:prod"]

EXPOSE 3000
