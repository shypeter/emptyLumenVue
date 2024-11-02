FROM node:18-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine as production-stage
COPY --from=build-stage /app/dist /var/www/frontend/dist
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]