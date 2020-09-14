class ItemsController < ApplicationController

  def index
    @genre_parents = Genre.where("ancestry is null")
    @items = Item.all
    #ホームページのピックアップに記載される情報は商品名・価格・画像のみ
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
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  # 商品詳細表示のアクション
  def show
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :introduction, :genre_id, :brand, :condition_id, :delivery_fee_id, :pref_id, :day_id, :price, images: []).merge(seller_id: current_user.id)
  end
end
