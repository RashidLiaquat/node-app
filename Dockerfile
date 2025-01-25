FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy all application files from the build context to the container
COPY . .

# Expose port 8080 for the app
EXPOSE 8080

# Command to run the app
CMD ["node", "app.js"]
