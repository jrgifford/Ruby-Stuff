require 'rubygems'
require 'twitter'
load 'tokens.rb'
client = Twitter::Client.new
#tweetie = client.mentions.
Twitter::Search.new.containing('reward').each do |result|
  @username = "#{result.from_user}"
end

client.update("@" + @username + " No reward is worth this!")
