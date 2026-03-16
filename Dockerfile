# Use a lightweight Node.js base image
FROM node:22-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
# (Even though you have no dependencies now, this is best practice)
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose the port defined in index.js (3000)
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]