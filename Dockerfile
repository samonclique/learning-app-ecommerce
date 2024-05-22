FROM php:7.4-apache 

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Copy your application files to the appropriate directory
COPY . /var/www/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache when the container launches
CMD ["apache2-foreground"]