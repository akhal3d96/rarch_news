require 'yaml'

require 'rarch_news/date'

module RarchNews
    class Article
        attr_accessor :title, :link, :description, :creator, :pub_date
        include Comparable
        def initialize(title, link, description, creator, pub_date)
            # def initialize(title, link, description, creator, pub_date,*options)
            # raise "Unexpected arguments" unless options.length == 4 or options.length == 0
            @title = title
            @link = link
            @description = description
            @creator = creator
            @pub_date = Date.archdate pub_date # unless pub_date.is_a? DateTime
        end

        def to_s
            "#{@title} <By: #{@creator}. At: #{@pub_date}>\n#{@link}\n#{@description}"
        end

        def <=>(other)
            @pub_date <=> other.pub_date
        end

        def save!
            File.open File.join(RarchNews.configuration.path, RarchNews.configuration.last_article), 'w' do |file|
                file.puts YAML.dump self
            end
        end

        def self.last_article
            # return nil unless File.exist? File.join(RarchNews.configuration.path,RarchNews.configuration.name)
            return nil if RarchNews.first_run? # TODO raise something
            YAML.load_file(File.join(RarchNews.configuration.path, RarchNews.configuration.last_article))
        end
    end
end
