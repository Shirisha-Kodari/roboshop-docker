## FROM node:20-alpine3.21 AS builder 
->Alpine Linux version = 3.21  
-> Alpine is a lightweight Linux distribution, so the image size is small. 

# FROM node:20 
->Node.js version = 20 official Node.js image
-> this is base image 

# WORKDIR /opt/server 
-> Sets the working directory inside the container. 
-> All commands after this will run from /opt/server.

# COPY package.json . & COPY *.js .
->Copies the package.json file from the local machine to the container.
->This file contains application dependencies.   

# RUN npm install
->Installs all Node.js dependencies mentioned in package.json.
Creates the node_modules directory.

#  FROM node:20-alpine3.21
->Alpine is a lightweight small image 

# RUN addgroup -S roboshop
->Creates a new group named roboshop.
-S means system group.

# RUN adduser -S roboshop -G roboshop
->Creates a system user called roboshop.
Adds the user to the roboshop group.
Running applications as a non-root user improves security.

# ENV MONGO="true"

->Creates an environment variable named MONGO.
->The application can read this value during runtime.   

# ENV MONGO_URL="mongodb://mongodb:27017/catalogue" 

->

# WORKDIR /opt/server 
->set the working direcory in the final image 

# USER roboshop
-> switched root user to non root user roboshop user 

# COPY --from=builder /opt/server /opt/server 
-> Copies application files and installed dependencies from the builder stage.
This is called a multi-stage build.

# CMD ["node","server.js"] 
-> Starts the Node.js application.
   Executes node server.js when the container starts.  


