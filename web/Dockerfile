# pull the Node.js Docker image
FROM node:latest

RUN mkdir -p /app

# RUN chown www-data:www-data /app

# create the directory inside the container
WORKDIR /app

# copy the package.json files from local machine to the workdir in container
COPY package*.json ./

# run npm install in our local machine
RUN npm install

# copy the generated modules and all other files to the container
COPY . .

# changing user permissions
RUN chown -R www-data:www-data /app

# non-prev.. user
USER www-data

# our app is running on port 8800 within the container, so need to expose it
EXPOSE 8000

# the command that starts our app
CMD ["node", "server.js"]
