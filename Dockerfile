FROM trafex/alpine-nginx-php7:1.10.0


COPY --from=phpmyadmin/phpmyadmin:5.1.0-fpm-alpine --chown=nobody:nobody /var/www/html /var/www/html
COPY --from=phpmyadmin/phpmyadmin:5.1.0-fpm-alpine /etc/phpmyadmin/config.inc.php /etc/phpmyadmin/config.inc.php
COPY config.secret.inc.php /etc/phpmyadmin/config.secret.inc.php
