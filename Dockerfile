# Use the official Node.js 16 image.
# https://hub.docker.com/_/node
FROM node:hydrogen-alpine
RUN apk add git

# Create and change to the app directory.
WORKDIR /usr/src/app

# Clone the repository
RUN git clone https://github.com/Baconiser/y-signaling-server.git .

# Install dependencies
RUN npm install 

# Your app binds to port 4444 so you'll use the EXPOSE instruction to have it mapped by the docker daemon
EXPOSE 4444

# Define the command to run your app using CMD which defines your runtime
CMD [ "node", "server.js" ]
