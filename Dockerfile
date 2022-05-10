FROM php:7.0-apache
RUN apt-get update
RUN apt-get install -y libicu-dev
RUN apt-get install -y libpq-dev
RUN apt-get install -y libmcrypt-dev
RUN apt-get install -y libxml2-dev  #soap
RUN apt-get install -y libpng-dev #gd
RUN apt-get install -y default-mysql-client
RUN apt-get install -y git
RUN apt-get install -y zip
RUN apt-get install -y unzip
RUN rm -r /var/lib/apt/lists/*
RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd
RUN docker-php-ext-install intl
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install soap
RUN docker-php-ext-install gd
RUN a2enmod rewrite
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
