FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y nginx php5-fpm php5-cli php5-mcrypt curl git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN sed -i 's/^;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/' /etc/php5/fpm/php.ini && \
    php5enmod mcrypt

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin --filename=composer

ADD ./laravel.conf /etc/nginx/sites-available/default
ADD ./start.sh /start.sh

EXPOSE 80 443

WORKDIR /var/www

CMD ["/start.sh"]
