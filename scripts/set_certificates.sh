#!/bin/bash

mkdir -p /vagrant/keys/ssl/api

mkdir -p /vagrant/keys/ssl/front

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /vagrant/keys/ssl/api/nginx-selfsigned.key -out /vagrant/keys/ssl/api/nginx-selfsigned.crt -subj "/C=GR/L=Athens/O=dimipak/OU=dimipak.test/CN=dimipak.gr/emailAddress=info@dimipak.gr"

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /vagrant/keys/ssl/front/nginx-selfsigned.key -out /vagrant/keys/ssl/front/nginx-selfsigned.crt -subj "/C=GR/L=Athens/O=dimipak/OU=dimipak.test/CN=dimipak.gr/emailAddress=info@dimipak.gr"