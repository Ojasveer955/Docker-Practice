FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY ./html/index.html .

EXPOSE 8080
