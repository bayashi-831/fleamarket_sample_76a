class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :introduction, null: false
      t.integer :condition_id, null: false
      t.integer :day_id, null: false
      t.integer :delivery_fee_id, null: false
      t.string :brand
      t.integer :pref_id, null: false
      t.integer :genre_id, null: false, foreign_key: true
      t.integer :buyer_id, foreign_key: true
      t.integer :seller_id, null: false,foreign_key: true

      t.timestamps
    end
  end
end