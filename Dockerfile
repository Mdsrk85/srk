FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm install --f

# Bundle app source
COPY . .

# Set environment variables
RUN export HOST=0.0.0.0 && export PORT=4888

# Expose the port
EXPOSE $PORT

# Run the command
CMD [ "npm", "start" ]
