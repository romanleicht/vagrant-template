#!/bin/sh

export DEBIAN_FRONTEND=noninteractive

# MongoDB
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
# echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' > /etc/apt/sources.list.d/mongodb.list
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list

# Elasticsearch
wget -qO - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
echo 'deb http://packages.elasticsearch.org/elasticsearch/1.2/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list

# RabbitMQ
wget -qO - http://www.rabbitmq.com/rabbitmq-signing-key-public.asc | apt-key add -
echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list

# Jenkins
wget -qO - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
echo 'deb http://pkg.jenkins-ci.org/debian binary/' > /etc/apt/sources.list.d/jenkins.list

# Docker
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
echo "deb https://get.docker.io/ubuntu docker main" > /etc/apt/sources.list.d/docker.list


apt-get update

# apt-get -y install mongodb-org
# apt-get -y install nodejs npm
