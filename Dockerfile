FROM node:18

# Create and set the working directory
WORKDIR /usr/src/app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the main.js file to the container
COPY main.js .

# Expose the port the app runs on
EXPOSE 3000

# Run the app
CMD ["node", "main.js"]
