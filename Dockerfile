# Use a lightweight Node.js base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to leverage Docker's caching
COPY pakg*.json ./

# Install application dependencies


# Copy the rest of the application source code
COPY . .

# Expose the port your application listens on
EXPOSE 3000

# Define the command to run your application
CMD [ "node", "index.js" ]
