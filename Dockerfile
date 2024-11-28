# Use the official Node.js image from the Docker Hub
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the application code into the container
COPY . .

# Expose the port the app will run on (assuming your app runs on port 3000)
EXPOSE 3000

# Command to run the Node.js application
CMD ["node", "app.js"]
