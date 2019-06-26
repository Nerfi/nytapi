class SearchesController < ApplicationController

    require 'json'
    require 'open-uri'

    # url = 'https://api.nytimes.com/svc/topstories/v2/travel.json'
     url = 'https://api.nytimes.com/svc/topstories/v2/science.json?api-key=T8XwJbOsNplMIhKOCym4I5ECLLGX73ku'

  user_serialized = open(url).read
  user = JSON.parse(user_serialized)

  def new

  end

  def show
    search_term = params['q'].capitalize


  end

end
