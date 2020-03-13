FROM node:lts-alpine
LABEL Description="vuejs-bootstrap4-axios:node"
WORKDIR /app

RUN yarn install

# Adiciona dependÍncias
RUN yarn add vue bootstrap-vue bootstrap axios

EXPOSE 80