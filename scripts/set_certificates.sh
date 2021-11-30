#!/bin/bash

mkdir /vagrant/keys/ssl

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /vagrant/keys/ssl/nginx-selfsigned.key -out /vagrant/keys/ssl/nginx-selfsigned.crt -subj "/C=GR/L=Athens/O=dimipak/OU=dimipak.test/CN=dimipak.gr/emailAddress=info@dimipak.gr"