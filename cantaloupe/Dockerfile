FROM openjdk:11-buster

ENV CANTALOUPE_VERSION=4.1.6
ENV CANTALOUPE_RELEASE_URL=https://github.com/cantaloupe-project/cantaloupe/releases/download/v$CANTALOUPE_VERSION/Cantaloupe-$CANTALOUPE_VERSION.zip

EXPOSE 8182

VOLUME /imageroot

COPY libjpeg-turbo/lib64 /opt/libjpeg-turbo/lib

# Update packages and install tools
RUN ./install-dependencies.sh && \
    adduser --system cantaloupe && \
    ./install-cantaloupe.sh

USER cantaloupe
CMD ["sh", "-c", "java -Dcantaloupe.config=/cantaloupe/cantaloupe.properties -jar /cantaloupe/cantaloupe-$CANTALOUPE_VERSION.war"]
