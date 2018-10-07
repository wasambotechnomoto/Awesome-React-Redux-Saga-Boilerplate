FROM node:10
COPY . /app
WORKDIR /app

RUN npm -v

RUN node -v

RUN mkdir -p logs && \
    npm install && \
    npm install pm2 -g && \
    npm run dev

EXPOSE 3200
CMD npm run serve && pm2 logs
