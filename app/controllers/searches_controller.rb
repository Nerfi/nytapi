class SearchesController < ApplicationController

    require 'json'
    require 'open-uri'

     #url = 'https://api.nytimes.com/svc/topstories/v2/travel.json?api-key=T8XwJbOsNplMIhKOCym4I5ECLLGX73ku&medium=#{search_term}'
    # url = 'https://api.nytimes.com/svc/topstories/v2/science.json?api-key=T8XwJbOsNplMIhKOCym4I5ECLLGX73ku'

  #user_serialized = open(url).read
  #user = JSON.parse(user_serialized)

  def new

  end

  def show

   url = 'https://api.nytimes.com/svc/topstories/v2/travel.json?api-key=T8XwJbOsNplMIhKOCym4I5ECLLGX73ku&medium=#{search_term}'
    # url = 'https://api.nytimes.com/svc/topstories/v2/science.json?api-key=T8XwJbOsNplMIhKOCym4I5ECLLGX73ku'

  user_serialized = open(url).read
  user = JSON.parse(user_serialized)





    search_term = params['q'].capitalize

    if !json['total'].zero?
      @articles = json["articles"]
    else
      render :new
    end




  end

end
