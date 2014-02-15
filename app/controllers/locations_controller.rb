class LocationsController < ApplicationController
  require 'factual'


  def index
    @places = []
    if params["commit"]
      @places =  Finder.search(params)
    end
  end


end
