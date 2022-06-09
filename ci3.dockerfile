FROM php:5.6-cli

COPY . /var/www/html

WORKDIR /var/www/html

CMD [ "php", "./index.php" ]


#COMMAND FOR AUTO CHANGE IN CODEIGNITER
#sudo docker run -d -v $PWD:/var/www/html --name php_apache -p 8000:80 php:5.6-apache /bin/bash -c 'a2enmod rewrite; apache2-foreground'

