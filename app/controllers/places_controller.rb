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
    p_cents = params[:price].to_f*100.0
    Place.create(name: params[:name], url: params[:url], w_type: params[:type], admis_price: p_cents.to_i, description: params[:description] )

    redirect_to root_url
  end

  def edit
    @place = Place.find_by(:name => params[:id])
    render "edit"
  end
  def update
    p_cents = params[:price].to_f*100.0
    puts p_cents.to_i
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
