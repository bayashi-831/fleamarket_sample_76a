class Items::SearchesController < ApplicationController
  def index
    @items = Item.search(params[:key]).limit(132)
    @search = params[:key]
  end
  
end
