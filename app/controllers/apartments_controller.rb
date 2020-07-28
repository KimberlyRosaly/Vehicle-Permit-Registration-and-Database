class ApartmentsController < ApplicationController

  # GET: /apartments
  get "/apartments" do
    erb :"/apartments/index.html"
  end

  # GET: /apartments/new
  get "/apartments/new" do
    erb :"/apartments/new.html"
  end

  # POST: /apartments
  post "/apartments" do
    redirect "/apartments"
  end

  # GET: /apartments/5
  get "/apartments/:id" do
    erb :"/apartments/show.html"
  end

  # GET: /apartments/5/edit
  get "/apartments/:id/edit" do
    erb :"/apartments/edit.html"
  end

  # PATCH: /apartments/5
  patch "/apartments/:id" do
    redirect "/apartments/:id"
  end

  # DELETE: /apartments/5/delete
  delete "/apartments/:id/delete" do
    redirect "/apartments"
  end
end
