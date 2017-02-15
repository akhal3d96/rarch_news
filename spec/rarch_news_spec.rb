require 'rarch_news'
RSpec.describe RarchNews do
    it 'Return 10 articles from Arch Linux rss feed' do
      expect(RarchNews.Articles.count).to eq(10)
    end
end
