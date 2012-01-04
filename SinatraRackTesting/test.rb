require_relative 'hello_world.rb' #only way i got it working with my setup.
require 'test/unit' #needed to install rack-test for this to work.
require 'rack/test'


ENV['RACK_ENV'] = 'test'

class HelloWorldTest < Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	def test_it_says_hello_world #say hello world!
		get '/'
		assert last_response.ok?
		assert_equal 'Hello World', last_response.body
	end

	def test_it_says_hello_to_a_person
		get '/', :name => 'Simon'
		assert last_response.body.include?('Simon')
	end
end
class NotFoundTest < Test::Unit::TestCase #404 page rocks, no?

	include Rack::Test::Methods

	def app 
		Sinatra::Application
	end

	def test_it_is_a_404
		get '/asdfadsf'
		assert_equal 404, last_response.status
	end
end