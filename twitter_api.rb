require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key    = "ZUPlNKhYywm6msfmT5yLBCYph"
  config.consumer_secret = "agmYw6U11MidatqldtIYHkDQ4Cdt6xemtoKtcCN9B7JW5HMtov"
end

client.search("to:justinbieber marry me", result_type: "recent").take(5).each do |tweet|
  puts "'#{tweet.text}' from @#{tweet.user.name}"
  puts
end
