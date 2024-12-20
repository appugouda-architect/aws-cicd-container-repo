FROM --platform=linux/arm64 node:alpine

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["npm", "start"]
