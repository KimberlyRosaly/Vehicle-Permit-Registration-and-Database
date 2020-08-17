class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    @users = User.all
    erb :"/users/index.html"
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end

  # POST: /users
  post "/users" do
    if params[:password] == "" || params[:username] == ""
      redirect to "/users/new"
    end    
    #make sure username does not already exist : user.id = nil
    @user = User.find_by(username: params[:username])
    
    if !@user #.nil? big mike is the best
      #create user
      @user = User.create(username: params[:username], password: params[:password])
      redirect "/users"
    else
      "error post /users/new route"
    end    
    
    #log them in  with a session
    session[:user_id] = @user.id
    
    redirect to '/'
    
  end

  # GET: /users/5
  get "/users/:id" do
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    @user = User.find(params[:id])
    @user.destroy
    redirect "/users"
  end
end
