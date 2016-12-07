class RemoveWishlistidFromWishlist < ActiveRecord::Migration[5.0]
  def change
    remove_column :wish_lists, :wishlist_id, :integer
  end
end
