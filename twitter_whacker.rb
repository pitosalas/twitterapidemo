require 'twitter'

class TwitterWhacker
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key    = "ZUPlNKhYywm6msfmT5yLBCYph"
      config.consumer_secret = "agmYw6U11MidatqldtIYHkDQ4Cdt6xemtoKtcCN9B7JW5HMtov"
    end
  end

  def set_words(word1, word2)
    @word1 = word1
    @word2 = word2
    search_string = "#{@word1} #{@word2}"
    @results = @client.search(search_string, result_type: "recent")
  end

  def twitter_results
    return @results
  end

  def sample_result
    return @results[0]
  end

  def score
    if @results.nil?
      nil
    else
      @results.length
    end
  end
end
