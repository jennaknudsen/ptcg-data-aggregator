# Node.js image
# use alpine linux as base
FROM alpine:latest AS node-img
# install node.js
RUN apk add --update nodejs npm
# set the working directory in the image to /app (also creates this folder)
WORKDIR /app
# copy all files in web server directory into /app in image
COPY src/web-server/ /app
# install missing node packages
RUN npm install
# run the node app
CMD ["npm", "start"]