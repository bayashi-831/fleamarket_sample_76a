class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      t.string :user_id, null: false
      t.string :token_id, null:false

      t.timestamps
    end
  end
end
