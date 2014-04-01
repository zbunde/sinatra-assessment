require 'sinatra/base'

class App < Sinatra::Application

  get '/' do
    erb :index
  end
  get '/add_product' do
    erb :add_product
  end
  post '/' do
    redirect '/'
  end
end