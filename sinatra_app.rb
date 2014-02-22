require 'rubygems' if RUBY_VERSION < "1.9"
require 'sinatra/base'

class FirstApp < Sinatra::Base
	set :static, true
	set :public, File.dirname(__FILE__) + '/static'
  
	get '/' do  	
    	'Hello World'
	end

	get '/hello_with_name/:name' do  	
  		"Hello #{params[:name]}"
  	end

  	get '/say/*/to/*' do  		
  		params[:splat]  		
  	end

  	get '/:name' do
  		@_name = params[:name]
  		erb :index
	end
end

