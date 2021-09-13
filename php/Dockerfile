FROM php:8.1-rc-cli

ENV TZ=Pacific/Auckland
RUN echo $TZ > /etc/timezone && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
# RUN apt update && apt install -y nginx php-fpm php-pdo php-pdo-mysql vim-gtk zsh
# RUN apt install -y php-gd php-xmlwriter php-mbstring php-curl php-zip php-xml

# php-fpm php-pdo php-pdo-mysql php-gd php-xmlwriter php-mbstring php-curl php-zip php-xml
RUN apt update && apt install -y libpng-dev zlib1g-dev libxml2-dev libonig-dev libcurl4-openssl-dev libzip-dev
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install gd
RUN docker-php-ext-install xmlwriter
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install curl
RUN docker-php-ext-install zip xml
WORKDIR /usr/src/myapp

CMD bash -c 'php -S 0.0.0.0:8010'
