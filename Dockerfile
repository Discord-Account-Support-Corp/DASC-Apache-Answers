FROM node:18

WORKDIR /app
COPY . /app

RUN npm install --legacy-peer-deps

ENV PORT=3000
EXPOSE 3000

CMD ["npm", "run", "dev"]
