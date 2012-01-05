require 'rubygems'

require 'sinatra'
enable :sessions

get '/' do
	erb :index
end

not_found do
  redirect '/404-page'
end

get '/404-page' do
  #session['counter'] ||= 0
  #session['counter'] += 1
  "You've gotten lost!" 
end