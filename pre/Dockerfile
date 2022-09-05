FROM node:lts
WORKDIR /my-awesome-app
EXPOSE 3010
RUN npm i -g pm2
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build
CMD ["pm2", "start", "ecosystem.config.js"]
