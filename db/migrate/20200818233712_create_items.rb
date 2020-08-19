class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :introduction, null: false
      t.string :condition, null: false
      t.integer :day, null: false
      t.string :delivery_fee, null: false
      t.integer :brand_id, null: false, foreign_key: true
      t.integer :genre_id, null: false, foreign_key: true
      t.integer :buyer_id, null: false, foreign_key: true
      t.integer :seller_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
