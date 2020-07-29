require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    #enable Sinatra Sessions - for UserPassword goodness
    enable :sessions
    set :session_secret, "Ch@ngeMe" # I want to use SECURERANDOM.hex(64) / require it
  end

  get "/" do
    erb :welcome
  end

end
