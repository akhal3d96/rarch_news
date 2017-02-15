module RarchNews
  class Configuration
    attr_accessor :url, :path, :last_article, :mail, :config_dir
    def initialize
      @config_dir = File.join '.config', 'rarch_news'
      @path = File.expand_path @config_dir, Dir.home
      Dir.mkdir @path unless File.exist? @path
      @url = 'https://www.archlinux.org/feeds/news/'
      @last_article = 'last_article.yaml'
      # @mail = 'mail.yaml'
    end

  # def mail_config; end
end
end
