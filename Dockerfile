FROM node:lts-alpine

WORKDIR /use/app
COPY rollup.config.js ./
COPY package.json ./
COPY yarn.lock ./
RUN yarn install
COPY ./ ./
RUN yarn build
EXPOSE 5000
ENV HOST=0.0.0.0
CMD [ "yarn", "start" ]
