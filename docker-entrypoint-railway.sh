#!/bin/bash
set -e

rm -f /etc/apache2/mods-enabled/mpm_event.load \
      /etc/apache2/mods-enabled/mpm_event.conf \
      /etc/apache2/mods-enabled/mpm_worker.load \
      /etc/apache2/mods-enabled/mpm_worker.conf || true

a2enmod mpm_prefork || true

mkdir -p /var/glpi/config \
         /var/glpi/files \
         /var/glpi/logs \
         /var/glpi/marketplace

chown -R www-data:www-data /var/glpi || true
chmod -R 775 /var/glpi || true

exec /entrypoint.sh
