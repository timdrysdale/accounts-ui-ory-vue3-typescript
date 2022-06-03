FROM troglobit/merecat:latest

# copy compiled statif files
COPY ./dist/. /var/www/

EXPOSE 80

CMD [ "merecat", "-n", "/var/www" ]
