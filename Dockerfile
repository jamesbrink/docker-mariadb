FROM mariadb:10.3.6

# Build ARGs.
ARG VCS_REF
ARG BUILD_DATE

# Labels and meta-data
LABEL maintainer="James Brink, brink.james@gmail.com" \
      decription="MariaDB - Multi Database" \
      version="10.3.6" \
      org.label-schema.name="mariadb" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/jamesbrink/docker-magento" \
      org.label-schema.schema-version="1.0.0-rc1"


COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["mysqld"]
