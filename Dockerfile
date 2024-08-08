# Use the latest Node.js Alpine image
FROM node:alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json if available
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Pull the latest APITable Docker image
FROM apitable/all-in-one:latest

# Expose the necessary ports (adjust if needed)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
