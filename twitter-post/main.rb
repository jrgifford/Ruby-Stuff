require 'rubygems'
require 'twitter'
load 'tokens.rb'
# You'll you need to add the following gist (customized of course)
# to 'tokens.rb' in order to get it working - DON'T PUBLISH THIS!!
# https://gist.github.com/1218269


client = Twitter::Client.new
puts "Type your tweet and hit enter:"
@tweet = gets.chomp

client.update(@tweet)
