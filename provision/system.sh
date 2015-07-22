#!/usr/bin/env bash
#Add nodejs repository
curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -

#Install nodejs and npm
sudo apt-get install --yes nodejs build-essential