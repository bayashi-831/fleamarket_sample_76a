class ItemsController < ApplicationController

  def index
  end

  def new
    @item = Item.new
    @genre_parent =  Genre.where("ancestry is null")
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
    @genre_parent =  Genre.where("ancestry is null")

    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def authenticate_user!
  end

  private

  def item_params
    params.require(:item).permit(:name, :text, :genre_id, :brand, :condition_id, :delivery_fee_id, :pref_id, :day_id, :price, images: [])
  end
end
