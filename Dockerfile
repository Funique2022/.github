FROM node:18.12.1
EXPOSE 80

## Node tool install
RUN npm install -g typescript
RUN npm install -g ts-node

## Copy node script
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN npm install

## Entry point
CMD ts-node .