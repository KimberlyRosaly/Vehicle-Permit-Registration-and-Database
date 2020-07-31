class PermitsController < ApplicationController

  # GET: /permits
  get "/permits" do
    @permits = Permit.all
    erb :"/permits/index.html"
  end

  # GET: /permits/new
  get "/permits/new" do
    erb :"/permits/new.html"
  end

  # POST: /permits
  post "/permits" do
    redirect "/permits"
  end

  # GET: /permits/5
  get "/permits/:id" do
    
    erb :"/permits/show.html"
  end

  # GET: /permits/5/edit
  get "/permits/:id/edit" do
    erb :"/permits/edit.html"
  end

  # PATCH: /permits/5
  patch "/permits/:id" do
    redirect "/permits/:id"
  end

  # DELETE: /permits/5/delete
  delete "/permits/:id/delete" do
    @permit = Permit.find(params[:id])
    @permit.destroy
    redirect "/permits"
  end
end
