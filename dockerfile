# FROM node:14-alpine

# WORKDIR /app

# COPY . .

# RUN npm install

# EXPOSE 3000

# CMD ["npm", "run", "dev"]

FROM node:14-alpine

RUN crond -l 2
COPY . .
RUN npm i  && npm run build

EXPOSE 3000
CMD ["npm", "run", "start"]