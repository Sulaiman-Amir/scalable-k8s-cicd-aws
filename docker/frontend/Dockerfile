# Use Node for frontend build
FROM node:18-alpine

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

CMD ["npm", "start"]

