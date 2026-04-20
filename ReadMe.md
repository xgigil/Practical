# Project Overview
This project is to create a static clone of Google Website

# Framework
- I did not install framework since my preferred framework, React, could not be supported since node.js was not installed in the PC

# Setup
```bash
# All in terminal
# 1. Go to project directory
cd practical

# 2. Docker Compose
docker compose up -d

# 3. Start Container 
docker run -p 8080:80 my-nginx-image

```

# Docker Configuration
## Docker
```bash
#Sets base image
FROM nginx:alpine

# Copies all files and folders from current directorys
COPY . /usr/share/nginx/html
```

## Docker Compose
```bash
version: '3.8' # Docker compose version
services: # Define containers
  website: # name of service
    build: . # Build image using Dockerfile in the current directory
    ports:
      - 8000:80  # Sets ports
    volumes:
      - .:/usr/share/nginx/html # Links current directory to Nginx web root folder
```