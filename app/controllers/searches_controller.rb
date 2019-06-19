class SearchesController < ApplicationController

  def new

  end

  def show
    search_term = params['q'].capitalize

  end
end
