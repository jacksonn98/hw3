class ApplicationController < ActionController::Base
   def index
    # find all places
    @places = Place.all
    # render places/index view
  end

  def new
    # render places/new view with new place form
  end

  def create
    place = Place.new
    place["title"] = params["title"]
    place["description"] = params["description"]
    place["date"] = params["image"]
    p.save
    redirect_to "/posts"
  end
end
