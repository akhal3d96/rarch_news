require 'nokogiri'
require 'open-uri'

module RarchNews
    class XML
        attr_reader :articles
        def initialize(url = RarchNews.configuration.url)
            doc = Nokogiri::XML open(url)
            @articles = doc.css 'item'
        end
    end
end
