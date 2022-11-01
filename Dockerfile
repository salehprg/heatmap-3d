# Choose the Image which has Node installed already
FROM node:16-buster


# install simple http server for serving static content
RUN npm install -g http-server

# make the 'app' folder the current working directory
WORKDIR /app

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

EXPOSE 8282
CMD [ "http-server", "-p", "8282", "." ]