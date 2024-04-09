# Use Node.js latest version as the base image
FROM node:latest as build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to work directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the entire project to work directory
COPY . .

# Build the React app
RUN npm run build

# Use nginx as the production server
FROM nginx:alpine

# Copy the built React app to nginx directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Command to run nginx
CMD ["nginx", "-g", "daemon off;"]
