FROM php:7.4-fpm-buster

RUN pecl install redis-4.3.0 \
    && docker-php-ext-install pdo_mysql opcache \
    && docker-php-ext-enable redis

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

RUN echo '<?php echo phpinfo();' >> /var/www/html/index.php
