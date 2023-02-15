#PHP


## Add apt
sudo add-apt-repository ppa:ondrej/php
sudo add-apt-repository ppa:ondrej/apache2
sudo apt-get update
sudo apt-get install php7.3 php7.3-dev php7.3-cli
sudo apt-get install php7.3-gd php7.3-bcmath php7.3-cgi php7.3-common php7.3-fpm php7.3-json php7.3-ldap php7.3-mbstring php7.3-mcrypt php7.3-xml php7.3-zip

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