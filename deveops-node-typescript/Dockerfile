FROM node:17-alpine3.12 AS BUILD_IMAGE
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:17-alpine3.12
WORKDIR /usr/src/app
COPY --from=BUILD_IMAGE /usr/src/app/build ./build
COPY package*.json ./
RUN npm ci --only=production

EXPOSE 3000
CMD ["npm", "start"]