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
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end
  private

  def item_params
    params.require(:item).permit(:name, :text, :genre_id, :condition_id, :deliverycost_id, :pref_id, :delivery_days_id, :price, images: []).merge(user_id: current_user.id, boughtflg_id:"1")
  end
end
