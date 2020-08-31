class ItemsController < ApplicationController

  def index
  end

  def new
    @item = Item.new
    @genre_parent =  Genre.where("ancestry is null")
    @condition = Condition.all
    @delivery_fee = DeliveryFee.all
    @pref = Pref.all
    @day = Day.all
  end
  # 親ジャンルが選択された後に動くアクション

  def genre_children
    @genre_children = Genre.find("#{params[:parent_id]}").children
    #親ジャンルに紐付く子ジャンルを取得
  end

  # 子ジャンルが選択された後に動くアクション
  
  def genre_grandchildren
    @genre_grandchildren = Genre.find("#{params[:child_id]}").children
    #子ジャンルに紐付く孫ジャンルの配列を取得
  end

  def create
    @item = Item.new(item_params)
    # binding.pry
    if @item.save
      redirect_to root_path
    else
      @genre_parent =  Genre.where("ancestry is null")
      @condition = Condition.all
      @delivery_fee = DeliveryFee.all
      @pref = Pref.all
      @day = Day.all
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :introduction, :genre_id, :brand, :condition_id, :delivery_fee_id, :pref_id, :day_id, :price, images: []).merge(seller_id: current_user.id)
  end
end
