require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  post '/piglatinize' do
    text_from_user= params[:user_phrase]
    binding.pry
    instance= PigLatinizer.new
    @piglatinized= instance.piglatinize(text_from_user)
    erb :newview
  end
end
