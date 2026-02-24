class PlacesController < ApplicationController
   def index
    # find all places
    @places = Place.all
    # render places/index view
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where({ "place_id" => @place.id })
  end

  def new
    render :template => "places/new"
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end
end