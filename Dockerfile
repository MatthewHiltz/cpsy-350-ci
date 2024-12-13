FROM node:18-alpine
WORKDIR /home/mhiltz/github-actions-ci-base/cpsy-350-ci-base
COPY package*.json ./
RUN npm install
COPY . .
ENV PORT=3000
CMD ["node", "server.js"]
