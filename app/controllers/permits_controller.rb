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
    @apartment = Apartment.find_or_create_by(building: params[:building].upcase, unit: params[:unit].upcase, number: params[:building].upcase + params[:unit].upcase)
    @permit = Permit.create(apartment_id: @apartment.id)
    params.except(:building, :unit).each do |key, value|
      @permit.send("#{key}=", value)
    end
    @permit.save
    redirect "/permits"
  end

  # GET: /permits/5
  get "/permits/:id" do
    @permit = Permit.find(params[:id])
    @apartment = Apartment.find(@permit[:apartment_id])
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
