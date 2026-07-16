FROM trafex/php-nginx:3.11.1

USER root

RUN apk add --no-cache php85-iconv

USER nobody

COPY --from=phpmyadmin:5.2.3-fpm-alpine --chown=nobody:nobody /var/www/html /var/www/html
COPY --from=phpmyadmin:5.2.3-fpm-alpine /etc/phpmyadmin/config.inc.php /etc/phpmyadmin/config.inc.php
COPY --from=phpmyadmin:5.2.3-fpm-alpine /etc/phpmyadmin/helpers.php /etc/phpmyadmin/helpers.php
COPY config.secret.inc.php /etc/phpmyadmin/config.secret.inc.php
