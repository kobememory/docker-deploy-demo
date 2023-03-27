FROM nginx:latest
COPY dist/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/

RUN cp dist/ /usr/share/nginx/html/ \
    && cpnginx.conf /etc/nginx/conf.d/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]