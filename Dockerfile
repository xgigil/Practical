FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY . .

EXPOSE 80


# https://docs.docker.com/get-started/docker-concepts/building-images/writing-a-dockerfile/
# https://www.youtube.com/watch?v=5pBjV7ATZBQ 