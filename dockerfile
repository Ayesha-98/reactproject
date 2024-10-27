FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port (adjust if needed)
EXPOSE 8080

# Start the application (adjust command based on your project)
CMD [ "npm", "start" ]