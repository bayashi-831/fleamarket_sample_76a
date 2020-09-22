class Items::SearchesController < ApplicationController
  def index
    @items = Item.search(params[:key])
  end
  
end
