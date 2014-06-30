require 'sinatra/base'

class EatCode < Sinatra::Base

set :views, File.join(File.dirname(__FILE__), '..', 'views')
set :public_folder, File.join(File.dirname(__FILE__), '..', 'public')
set :partial_template_engine, :erb

  get '/' do
    erb :welcome
  end

  get '/features' do
    erb :features
  end

  get '/pricing' do
  	erb :pricing
  end

  get '/contact' do
  	erb :contact
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end


