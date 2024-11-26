# Use the official node image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the entire source code
COPY . .

# Build the app for production
RUN npm run build

# Serve the build using an HTTP server (e.g., serve)
RUN npm install -g serve

# Expose port 3000 (frontend)
EXPOSE 3000

# Run the app
CMD ["serve", "-s", "build", "-l", "3000"]
