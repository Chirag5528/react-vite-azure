FROM node:18.16.0-alpine

WORKDIR /app

COPY package*.json .

RUN yarn install

COPY . .

EXPOSE 4173

RUN yarn build

CMD ["yarn", "preview"]
