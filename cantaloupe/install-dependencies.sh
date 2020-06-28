#!/bin/bash

apt-get update -qy && \
apt-get dist-upgrade -qy && \
apt-get install -qy --no-install-recommends \
  curl imagemagick ffmpeg libopenjp2-tools \
  ffmpeg unzip default-jre-headless && \
apt-get -qqy autoremove && apt-get -qqy autoclean
