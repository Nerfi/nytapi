class SearchesController < ApplicationController

    require 'json'
    require 'open-uri'


     #url = 'https://api.nytimes.com/svc/topstories/v2/travel.json?api-key=T8XwJbOsNplMIhKOCym4I5ECLLGX73ku&medium=#{search_term}'
    # url = 'https://api.nytimes.com/svc/topstories/v2/science.json?api-key=T8XwJbOsNplMIhKOCym4I5ECLLGX73ku'


  def new

  end

  def show
#puede que en la linea 17 tengamos que cambiar las dobles comillas por singles
   url = "https://api.nytimes.com/svc/topstories/v2/science.json?api-key=#{ENV["NEW_YORk_TIMES_PUBLISHABLE_KEY"]}"

  articles = open(url).read
  articles = JSON.parse(articles)
   # @articles = URL.parse(url.encode(url))

#code not workign and maybe not useful
   #uri = URI.parse("https://api.nytimes.com/svc/topstories/v2/science.json?api-key=#{ENV['NEW_YORk_TIMES_PUBLISHABLE_KEY']}")
   #uri = URI('https://api.nytimes.com/svc/topstories/v2/travel.json?api-key=T8XwJbOsNplMIhKOCym4I5ECLLGX73ku&medium=#{search_term}')
   #uri.open


  #user_serialized = open(url).read



  #articles = JSON.parse(user_serialized)

  @articles = articles





    search_term = params['q'].capitalize

      if !JSON[@articles].nil?
        @articles = JSON[@articles]
      else
        render :new
      end




  end

end
