FROM glpi/glpi:11

USER root

RUN a2dismod mpm_event mpm_worker || true \
 && a2enmod mpm_prefork || true

EXPOSE 80
