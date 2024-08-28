FROM node:18.20-alpine

EXPOSE 8080
WORKDIR /usr/src/app
ENV NODE_ENV=production

COPY database.sqlite .
COPY package.json .
COPY package-lock.json .
COPY src .

RUN npm install

CMD ["node", "index.js"]
