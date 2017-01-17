class RemoveImageUrlFromCollections < ActiveRecord::Migration[5.0]
  def change
    remove_column :collection_cards, :image_url
  end
end
