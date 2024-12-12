FROM node:18-alpine
WORKDIR .
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=3000
CMD ["node", "server.js"]
