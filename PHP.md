#PHP

## enable php 8.0

sudo a2dismod php7.4
sudo a2enmod php8.0
sudo service apache2 restart
sudo update-alternatives --set php /usr/bin/php8.0

## enable php 7.4

sudo a2dismod php8.0
sudo a2enmod php7.4
sudo service apache2 restart
sudo update-alternatives --set php /usr/bin/php7.4

## Install libapache2-mod

sudo apt install php7.4-curl php7.4-intl php7.4-xml libapache2-mod-php7.4 php7.4-mysqlnd


## CLear composer cache
composer clear-cache