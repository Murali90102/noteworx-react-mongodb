FROM node:8.1.0 as build
USER node
WORKDIR /tmp/app
COPY ../. /tmp/app/.

##
RUN pwd && ls -lrt
RUN npm install


CMD [ "npm", "run", "serve:api" ]