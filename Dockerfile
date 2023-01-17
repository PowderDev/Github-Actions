FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME github-actions
ENV MONGODB_CLUSTER_ADDRESS github-actions.od4mqn0.mongodb.net
ENV MONGODB_USERNAME admin
ENV MONGODB_PASSWORD 1234

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
