FROM httpd:2.4.41-alpine
RUN apk update; \
    apk upgrade;
COPY apache/apache.conf /usr/local/apache2/conf/httpd.conf
CMD ["apachectl","-D","FOREGROUND"]
EXPOSE 80
EXPOSE 443