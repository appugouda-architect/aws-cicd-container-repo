FROM --platform=linux/arm64 node:alpine

RUN apk add --no-cache nodejs npm

WORKDIR /app

COPY package*.json /app

RUN npm install

COPY . /app

EXPOSE 3000

CMD ["npm", "start"]
