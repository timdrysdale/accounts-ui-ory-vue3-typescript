FROM nginx

#https://www.nginx.com/blog/deploying-nginx-nginx-plus-docker/
RUN rm /etc/nginx/nginx.conf 

# copy compiled statif files
COPY ./dist/. /usr/share/nginx/html
COPY conf /etc/nginx

EXPOSE 80

