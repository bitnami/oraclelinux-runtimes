FROM bitnami/php-fpm:5.6-ol-7 as development

FROM bitnami/oraclelinux-runtimes:7-php
LABEL maintainer "Bitnami <containers@bitnami.com>"

COPY --from=development /opt/bitnami/common /opt/bitnami/common
COPY --from=development /opt/bitnami/php /opt/bitnami/php

ENV BITNAMI_APP_NAME="php-fpm" \
    BITNAMI_IMAGE_VERSION="5.6.36-ol-7-r1" \
    PATH="/opt/bitnami/php/bin:/opt/bitnami/php/sbin:$PATH"

CMD ["php-fpm","-F","--pid","/opt/bitnami/php/tmp/php-fpm.pid","-y","/opt/bitnami/php/etc/php-fpm.conf"]
