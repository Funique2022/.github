FROM node:18.12.1
EXPOSE 8080

## Copy node script
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN npm install

## Entry point
CMD ts-node .