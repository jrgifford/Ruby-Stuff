require 'rubygems'
require 'twitter'
load 'tokens.rb'
client = Twitter::Client.new
#tweetie = client.mentions.
Twitter::Search.new.containing('reward').per_page(1).each do |result|
  @username = "#{result.from_user}"
end

client.update("@" + @username + " No reward is worth this!")
