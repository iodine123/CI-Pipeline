#Build image
FROM node:14-alpine

WORKDIR /app
COPY package.json /app/
RUN npm install
COPY . /app
RUN npm run build

#Run with nginx
FROM nginx:latest
COPY --from=build-step /app/build /usr/share/nginx/html
