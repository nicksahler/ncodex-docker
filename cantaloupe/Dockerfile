FROM openjdk:11-buster

ENV CANTALOUPE_VERSION=4.1.6
ENV CANTALOUPE_RELEASE_URL=https://github.com/cantaloupe-project/cantaloupe/releases/download/v$CANTALOUPE_VERSION/Cantaloupe-$CANTALOUPE_VERSION.zip

EXPOSE 8182

VOLUME /imageroot

COPY libjpeg-turbo/lib64 /opt/libjpeg-turbo/lib
COPY scripts /scripts
# Update packages and install tools
RUN /scripts/install-dependencies.sh && \
    adduser --system cantaloupe && \
    /scripts/install-cantaloupe.sh

USER cantaloupe
CMD ["sh", "-c", "java -Dcantaloupe.config=/cantaloupe/cantaloupe.properties -jar /cantaloupe/cantaloupe-$CANTALOUPE_VERSION.war"]
