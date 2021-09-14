FROM zenika/alpine-chrome:with-node

USER root
WORKDIR /app

RUN npm install prerender prerender-memory-cache

COPY server.js /app/server.js

EXPOSE 3000

CMD [ "node", "server.js" ]
