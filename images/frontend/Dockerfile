FROM node:18-alpine AS build-stage

# Set working directory
WORKDIR /app

# Copy package files first
COPY --chmod=0644 package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY --chmod=0644 . .

# Make sure node_modules has correct permissions
RUN chmod -R 755 node_modules/

# Build the application
RUN npm run build

#FROM nginx:alpine AS production-stage
#COPY --from=build-stage /app/dist /var/www/frontend/dist
EXPOSE 5173

ENV HOST=0.0.0.0

CMD ["nginx", "-g", "daemon off;"]