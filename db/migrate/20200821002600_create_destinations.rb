class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.integer :postal_code, null: false
      t.integer :prefecture_id, null: false
      t.string :city, null: false
      t.integer :house_number, null: false
      t.string :building_name
      t.integer :user_id, null: false, foreign_key: true
      t.string :family_name, null: false
      t.string :first_name, null: false
      t.string :family_name_kana, null: false
      t.string :first_name_kana, null: false
    end
  end
end