# Use a Node.js image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port your Express app runs on (e.g., 5000)
EXPOSE 4000

# Start the application with the correct command
CMD ["node", "server.js"]
