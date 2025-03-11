# Use official Node.js image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (if available)
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app files
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]
