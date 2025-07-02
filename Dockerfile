# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Install simple HTTP server
RUN npm install -g http-server

# Expose port 4000
EXPOSE 4000

# Run the site using http-server
CMD ["http-server", "-p", "4000"]
