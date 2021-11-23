#!/bin/bash

apt-get update


sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /vagrant/services/ssl/nginx-selfsigned.key -out /vagrant/services/ssl/nginx-selfsigned.crt -subj "/C=GR/L=Athens/O=dimipak/OU=dimipak.test/CN=dimipak.gr/emailAddress=info@dimipak.gr"