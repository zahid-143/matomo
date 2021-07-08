FROM ubuntu:20.04

ENV TZ=Pacific/Auckland
RUN echo $TZ > /etc/timezone && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
RUN apt update && apt install -y nginx php-fpm php-pdo php-pdo-mysql vim-gtk zsh
RUN apt install -y php-gd php-xmlwriter php-mbstring php-curl php-zip php-xml

CMD bash -c 'service nginx start; while true; do sleep 3600; done'
