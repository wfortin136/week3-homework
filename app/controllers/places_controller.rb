class PlacesController < ApplicationController

  def index
    @places = Place.all
  end
  
  def show
    @place = Place.find_by(:name => params[:id])
  end

  def delete
    @place = Place.find_by(:name => params[:id])
    @place.delete

    redirect_to root_url
  end

  def new
  end
  
  def create
    Place.create(name: params[:name], url: params[:url], w_type: params[:type], admis_price: params[:price], description: params[:description] )

    redirect_to root_url
  end

  def edit
    @place = Place.find_by(:name => params[:id])
    render "edit"
  end
  def update
    current = Place.find_by(:name => params[:id])
    current.url = params[:url]
    current.name = params[:name]
    current.description = params[:description]
    current.admis_price = params[:price]
    current.w_type = params[:type]
    current.save 
    redirect_to action: "show"
  end
end
