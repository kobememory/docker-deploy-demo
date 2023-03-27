FROM nginx:latest
COPY dist/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/

RUN echo '<h1>Hello, Docker!</h1>' > /usr/share/nginx/html/index.html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]