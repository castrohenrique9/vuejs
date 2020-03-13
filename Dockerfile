FROM node:lts-alpine
LABEL Description="vuejs-bootstrap4:node"
WORKDIR /app

COPY package.json /app/package.json

# Instala Yarn e adiciona dependências
RUN yarn install
RUN yarn add vue bootstrap-vue bootstrap axios

EXPOSE 8080

CMD ["yarn", "serve"]