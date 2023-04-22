FROM docker.elastic.co/elasticsearch/elasticsearch:7.12.1
EXPOSE 9200
ENV discovery.type=single-node
