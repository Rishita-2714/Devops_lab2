# Use Node.js LTS version as base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy all other source code to working directory
COPY . .

# Expose the app's port (change if needed)
EXPOSE 4000

# Start the app
CMD ["npm", "start"]
