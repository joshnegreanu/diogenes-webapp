# Use a slim Node image
FROM node:20-alpine

WORKDIR /app

COPY . .

RUN npm install -g http-server

EXPOSE 8080

CMD ["http-server", "-p", "8080", "."]
