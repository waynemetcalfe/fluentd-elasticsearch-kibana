# fluentd-elasticsearch-kibana
Complete fluentd aggregator, elasticsearch, curator and kibana environment via docker compose

To run, replace __PATTERN__ with your index name:
    * grep -rl __PATTERN__ --include=*{yml,conf} | xargs sed -i 's/__PATTERN__/<your index name>/'
    * docker compose build && docker compose up -d

This results in the following:
    * elasticsearch at localhost:9200
    * kibana at localhost:80
    * fluentd in aggregator mode at localhost:24224
    * elasticsearch curator maintaining 30 days of data

See [fluentd documentation](http://docs.fluentd.org/articles/out_forward) to set up a fluentd collector to forward data to the aggregator node.
