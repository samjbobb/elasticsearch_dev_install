# elasticsearch_dev_install
Installs the lastest elasticsearch 1.5 on ubuntu/debian as a service. Configures for local development (1 shard, no replicas, no clustering). Starts on boot.

Run: `./install.sh`

Sometimes it doesn't start on boot (??). Run: `sudo service elasticsearch start`

Based on these docs: 
* https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-repositories.html
* https://www.elastic.co/guide/en/elasticsearch/guide/master/relevance-is-broken.html
* https://www.elastic.co/guide/en/elasticsearch/guide/master/_installing_elasticsearch.html

