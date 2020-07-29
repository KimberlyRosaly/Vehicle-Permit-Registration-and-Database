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
    if params[:building] != "" && params[:unit] != ""
      @bld = params[:building].upcase
      @uni = params[:unit].upcase
      @num = @bld + @uni
    else
      redirect to "/apartments/new"
    end
    # check if paramms = ""

    @apartment = Apartment.find_by(number: @num)

    if @apartment != nil
      redirect to "/apartments/#{@apartment.id}"
    else
      @apartment = Apartment.create(building: @bld, unit: @uni, number: @num)
    end
    
    # check to see if their input already exists in database
    # if it does not exist
    #   create new apartment 
    #   create apartment_number by joining u & b
    #   save apartment into database
    # redirect '/apartments
      
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
