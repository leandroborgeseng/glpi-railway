FROM glpi/glpi:11

USER root

COPY docker-entrypoint-railway.sh /usr/local/bin/docker-entrypoint-railway.sh
RUN chmod +x /usr/local/bin/docker-entrypoint-railway.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint-railway.sh"]
