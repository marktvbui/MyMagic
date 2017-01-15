class AddCardIdImageUrLtoCollectionCards < ActiveRecord::Migration[5.0]
  def change
    add_column :collection_cards, :card_id, :string
    add_column :collection_cards, :image_url, :string
  end
end
