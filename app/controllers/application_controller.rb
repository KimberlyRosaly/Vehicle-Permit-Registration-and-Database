require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    #enable Sinatra Sessions - for UserPassword goodness
    enable :sessions
    set :session_secret, "Ch@ngeMe"
  end

  get "/" do
    erb :welcome
  end

end
