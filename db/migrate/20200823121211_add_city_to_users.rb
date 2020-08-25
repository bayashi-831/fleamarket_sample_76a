class AddCityToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :postal_code, :string
    add_column :users, :prefecture_id, :integer
    add_column :users, :city, :string
    add_column :users, :house_number, :string
    add_column :users, :building_name, :string
    add_column :users, :destination_family_name, :string
    add_column :users, :destination_first_name, :string
    add_column :users, :destination_family_name_kana, :string
    add_column :users, :destination_first_name_kana, :string
    add_column :users, :phone_number, :string
  end
end
