FROM node
COPY server.js /home/app/server.js
COPY package.json /home/app/package.json

# This will set the working directory for the container
WORKDIR /home/app/

# This will install the dependencies for my friends 
RUN npm install 

# This will expose the port 3000
EXPOSE 3000

# This will run the server
CMD ["node", "server.js"]
