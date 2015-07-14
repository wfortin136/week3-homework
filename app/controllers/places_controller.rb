class PlacesController < ApplicationController

  def index
    @places = Place.all
  end
  
  def show
    #Get record from database
    @place = Place.find_by(:name => params[:id])
  end

  def delete
    #Get record from database and delete.
    @place = Place.find_by(:name => params[:id])
    @place.delete

    #Go to places to view updated list
    redirect_to root_url
  end

  def new
  end
  
  def create
    #convert from text field to float, dollars to cents
    p_cents = params[:price].to_f*100.0

    # Add to database
    Place.create(name: params[:name], url: params[:url], w_type: params[:type], admis_price: p_cents.to_i, description: params[:description] )

    redirect_to root_url
  end

  def edit
    @place = Place.find_by(:name => params[:id])
    render "edit"
  end
  def update
    #convert from text field to float, dollars to cents
    p_cents = params[:price].to_f*100.0
   
    #Update record in database
    current = Place.find_by(:name => params[:id])
    current.url = params[:url]
    current.name = params[:name]
    current.description = params[:description]
    current.admis_price = p_cents.to_i
    current.w_type = params[:type]
    current.save 
    redirect_to action: "show"
  end
end
