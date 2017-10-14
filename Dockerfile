FROM node:6.11.4-alpine
MAINTAINER Wonderlic DevOps <DevOps@wonderlic.com>

COPY helpers /app/helpers
COPY services /app/services
COPY env.js handlers.js server.js package.json /app/

RUN cd /app && npm install

RUN ln -s /usr/local/bin/node /app/s3-spa-loader

CMD ["/app/s3-spa-loader", "/app/server.js"]
