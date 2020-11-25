class SearchController < ApplicationController
  def index
    @station = SearchFacade.find(params['location'])

    @directions = SearchFacade.get(params['location'], @station.address, @station.city, @station.state)
  end
end