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

   # @articles = URL.parse(url.encode(url))

   #uri = URI('https://api.nytimes.com/svc/topstories/v2/travel.json?api-key=T8XwJbOsNplMIhKOCym4I5ECLLGX73ku&medium=#{search_term}')
    url = 'https://api.nytimes.com/svc/topstories/v2/science.json?api-key=[NEW_YORL_TIMES_PUBLISHABLE_KEY]'





  user_serialized = open(url).read



  articles = JSON.parse(user_serialized)

  @articles = user





    search_term = params['q'].capitalize

    if !JSON[@articles].nil?
      @articles = JSON[@articles]
    else
      render :new
    end




  end

end
