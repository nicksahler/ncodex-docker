#!/bin/sh

# Get and unpack Cantaloupe release archive
curl --silent --fail -OL $CANTALOUPE_RELEASE_URL && \
unzip Cantaloupe-$CANTALOUPE_VERSION.zip && \
ln -s cantaloupe-$CANTALOUPE_VERSION cantaloupe && \
mkdir -p /var/log/cantaloupe /var/cache/cantaloupe && \
chown -R cantaloupe /cantaloupe /var/log/cantaloupe /var/cache/cantaloupe && \
cp -rs /cantaloupe/deps/Linux-x86-64/* /usr/ && \
rm Cantaloupe-$CANTALOUPE_VERSION.zip