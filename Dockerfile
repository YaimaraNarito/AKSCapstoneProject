FROM node:16.13.1
WORKDIR /app
COPY ./src .
RUN npm i
CMD ["node", "./server.js"]
EXPOSE 3001