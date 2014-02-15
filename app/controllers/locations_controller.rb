class LocationsController < ApplicationController
  require 'factual'


  def index
    @places = []
    if params["commit"]
      @places =  Finder.search(params)
    end
  end

  def show
    @detail = Finder.get_place_detail(params["id"] )

  end

end
