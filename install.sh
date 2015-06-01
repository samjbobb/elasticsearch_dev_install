#!/bin/bash
echo "Installing  elasticsearch 1.5 as a service in ubuntu, isolated from other nodes, settings suitable for dev"

wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb http://packages.elastic.co/elasticsearch/1.5/debian stable main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update && sudo apt-get install elasticsearch

CONFIG_FILE="/etc/elasticsearch/elasticsearch.yml"
sudo cp $CONFIG_FILE $CONFIG_FILE.orig

# Uncomment dev settings lines
printf "# Settings for local development\nindex.number_of_shards: 1\nindex.number_of_replicas: 0\ndiscovery.zen.ping.multicast.enabled: false\nnode.local: true\n" | sudo tee -a $CONFIG_FILE

# Configure elasticsearch to automatically start during bootup
sudo update-rc.d elasticsearch defaults 95 10

# Start it up
sudo service elasticsearch start
