# Use the official httpd image as the base image
FROM httpd:latest

# Copy custom configuration file to Apache configuration directory
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

# Copy custom HTML files to Apache document root directory
COPY ./html /usr/local/apache2/htdocs/

# Expose port 80 to allow incoming traffic
EXPOSE 80

# Start Apache HTTP Server when the container starts
CMD ["httpd-foreground"]
