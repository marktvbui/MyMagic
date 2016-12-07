class CreateWishLists < ActiveRecord::Migration[5.0]
  def change
    create_table :wish_lists do |t|
      t.integer :wishlist_id
      t.integer :user_id
      t.integer :card_id
      t.decimal :target_price
      t.timestamps
    end
  end
end
