require 'net/http'
require 'uri'

module Jokes
  class GetJoke
    def self.by_category(category)
      url = URI.parse('https://api.humorapi.com/jokes/random?include-tags=' + category + '&min-rating=5' + '&api-key=' + ENV['HUMOR_API_KEY'])
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true if url.scheme == 'https'

      request = Net::HTTP::Get.new(url)
      response = http.request(request)
      puts "Response #{response.code} #{response.message}: #{response.body}"
      JSON.parse(response.body, object_class: OpenStruct)
    end
  end
end
