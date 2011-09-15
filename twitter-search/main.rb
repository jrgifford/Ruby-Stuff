require "rubygems"
require "twitter"

search = Twitter::Search.new

search.containing("askubuntu").result_type("recent").per_page(3).each do |r|
  puts "#{r.from_user}: #{r.text}"
end

search.clear
