FROM node:24-alpine AS builder
WORKDIR /opt/platform/apps

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]