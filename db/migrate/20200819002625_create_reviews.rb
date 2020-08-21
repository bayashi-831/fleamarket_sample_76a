class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :evaluation, null: false
      t.text :review, null: false
      t.integer :user_id, null: false, foreign_key: true
      t.integer :item_id, null: false, foreigh_key: true

      t.timestamps
    end
  end
end
