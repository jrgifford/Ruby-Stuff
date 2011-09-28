require 'rubygems'
require 'boxcar_api'

provider = BoxcarAPI::Provider.new('c1dQjjKHm0pXIrGQmWEb', 'Oo7gJ18sYVVQOAMzoDahzAmYxo8dfqDJ31cUKdJQ')
provider.subscribe "james@jamesrgifford.com"
provider.notify("james@jamesrgifford.com", "It worked!")
