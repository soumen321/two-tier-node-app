# Stage 1: Build the application
# Use an official Node.js runtime as a parent image
FROM node:latest

# Set the working directory in the container
WORKDIR /home/app

# Copy package.json and package-lock.json to the working directory
COPY ./app/package.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY ./app/app.js ./
COPY ./app/views ./views

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
