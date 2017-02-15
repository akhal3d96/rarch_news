require 'nokogiri'

require 'rarch_news/version'
require 'rarch_news/xml'
require 'rarch_news/article'
require 'rarch_news/configuration'

module RarchNews
  class << self
    attr_accessor :configuration
  end

  module_function

  def configure
    yield configuration
  end

  def configuration
    @configuration ||= RarchNews::Configuration.new
  end

  def articles
    articles = RarchNews::XML.new.articles
    articles_arr = []
    articles.each do |article|

      title = article.css('title').text
      link = article.css('link').text
      description = article.css('description').text.gsub(/<\/?[^>]+>/, '')
      creator = article.css('creator').text
      pubDate = article.css('pubDate').text

      new_article = RarchNews::Article.new title, link,description,creator,pubDate
      yield new_article if block_given?
      articles_arr << new_article
    end
    articles_arr
  end

  def first_run?
    !File.exist? File.join configuration.path, configuration.last_article
  end
end
