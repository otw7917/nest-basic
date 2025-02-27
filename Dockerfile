FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

# (프로덕션 환경은 --only=production)
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]