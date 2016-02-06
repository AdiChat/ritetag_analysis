require 'oauth'
require 'json'
require 'rest_client'

class RiteTag_Analysis

	def initialize(auth)
		@auth = auth
		@consumer=OAuth::Consumer.new @auth['consumer_key'], @auth['consumer_secret'], {:site=>"http://ritetag.com/api/v2"}
        	@access_token = OAuth::AccessToken.new(@consumer, @auth['token'], @auth['token_secret'])
	end

	def statistics(query)
		response = RestClient.get 'https://ritetag.com/api/v2.2/data/stats/#{query}'
		response_json = JSON.pase(respone)
		puts response_json["stats"]
	end

	def formatted_stat(hashtag, parameter = "associatedHashtags", term = 1, section = "tags")
		response = RestClient.get 'https://ritetag.com/api/v2.2/data/stats/#{hashtag}'
		response_json = JSON.pase(respone)
		puts response_json["associatedHashtags"][1]["tags"]
	end

	def trending(query1 = 'green', query2)
		response = RestClient.get 'https://ritetag.com/api/v2.2/data/trending/?#{query1}=0&#{query2}=0'		
		response_json = JSON.pase(respone)
		puts response_json
	end

	def influencers(query)
		response = RestClient.get 'https://ritetag.com/api/v2.2/influencers/#{query}'
		response_json = JSON.pase(respone)
		puts response_json
	end

	def history(query)
		response = RestClient.get 'https://ritetag.com/api/v2.2/history/#{query}'
		response_json = JSON.pase(respone)
		puts response_json
	end

end
