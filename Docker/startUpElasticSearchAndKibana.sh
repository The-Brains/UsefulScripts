# Will spin up Elasticsearch and Kibana
# After than ran, you can do `docker ps` to check
# Kibana will be at http://localhost:5601/
# You can check elasticsearch with `curl -X GET 'http://localhost:9200'`
function startUpElasticSearch {
	LOCAL_ES_PATH="<FILL THAT HERE WITH A LOCAL PATH FOR THE esdata FILE>"
	VERSION="6.2.3"
	docker kill elasticsearch
	docker kill kibana
	docker rm elasticsearch
	docker rm kibana
	docker run -d --name elasticsearch -v ${LOCAL_ES_PATH}:/usr/share/elasticsearch/data -p 9200:9200 -p 9300:9300 docker.elastic.co/elasticsearch/elasticsearch:${VERSION}
	docker run --link elasticsearch:elastic-url -e ELASTICSEARCH_URL="http://elastic-url:9200" -p 5601:5601 -d --name kibana docker.elastic.co/kibana/kibana:${VERSION}
}
