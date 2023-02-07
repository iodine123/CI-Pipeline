FROM node:14-alpine

USER root

WORKDIR /src/ 
COPY ./ /src/

RUN npm install && \
    npm start
