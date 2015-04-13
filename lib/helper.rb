require 'elasticsearch'
require 'json'
require 'hashie'

    def get_build_value(type, bglenv)
	es_url = "http://es.int.test.com.au:9200"
	client = Elasticsearch::Client.new url: es_url
	response = client.search index: 'builds', type: type,  body: { 
							   query: { match: { env: bglenv } },
							   sort: { DateTime: {order:'desc'}},
							   size: 1 
							}
        #puts response 
	result = Hashie::Mash.new response
	#result.hits.hits.first._source.buildno
	"BuildNo: #{result.hits.hits.first._source.buildno} DateTime: #{result.hits.hits.first._source.DateTime}"
    end


#puts get_build_value('api','staging')
