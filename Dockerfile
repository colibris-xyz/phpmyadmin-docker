FROM trafex/php-nginx:3.0.0

USER root

RUN apk add --no-cache php81-iconv

USER nobody

COPY --from=phpmyadmin:5.2.1-fpm-alpine --chown=nobody:nobody /var/www/html /var/www/html
COPY --from=phpmyadmin:5.2.1-fpm-alpine /etc/phpmyadmin/config.inc.php /etc/phpmyadmin/config.inc.php
COPY config.secret.inc.php /etc/phpmyadmin/config.secret.inc.php
