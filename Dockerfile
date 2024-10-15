FROM node:21.3

COPY * /

RUN npm install

RUN apt install curl

#CMD curl http://localhost:3000/
CMD [ "node", "app.js", "&&", "curl", "http://localhost:3000/" ]
