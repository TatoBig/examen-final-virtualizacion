FROM node:18-alpine3.16

WORKDIR /app

COPY package*.json ./
COPY prisma ./prisma/
COPY .env ./
COPY . .

RUN yarn install
RUN yarn prisma generate
RUN yarn build

EXPOSE 3000

CMD [ "yarn", "preview" ]