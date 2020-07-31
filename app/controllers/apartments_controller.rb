class ApartmentsController < ApplicationController

  # GET: /apartments
  get "/apartments" do
    @apartments = Apartment.all
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
    # check if paramms = "" | turn 'em capitolized | make my :NUMBER for the attribute

    @apartment = Apartment.find_by(number: @num)
    # see if the apartment already exists in the database

    if @apartment != nil
      redirect to "/apartments/#{@apartment.id}"
    else
      @apartment = Apartment.create(building: @bld, unit: @uni, number: @num)
    end
      
    redirect "/apartments"
  end

  # GET: /apartments/5
  get "/apartments/:id" do
    erb :"/apartments/show.html"
  end

  # GET: /apartments/5/edit
  get "/apartments/:id/edit" do
    @apartment = Apartment.find(params[:id])
    erb :"/apartments/edit.html"
  end

  # PATCH: /apartments/5
  patch "/apartments/:id" do
    @apartment = Apartment.find{params[:id]}
    @apartment.update(building: params[:building].upcase, 
      unit: params[:unit].upcase,
      number: params[:building].upcase + params[:unit].upcase)
    redirect "/apartments/#{@apartment.id}"
  end

  # DELETE: /apartments/5/delete
  delete "/apartments/:id/delete" do
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
    redirect "/apartments"
  end
end
