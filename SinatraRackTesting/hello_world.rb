require 'sinatra'

not_found do
	"We lost him sir\!"
end

get '/' do
	"Hello World #{params[:name]}".strip
end