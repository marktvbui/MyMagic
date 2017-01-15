class AddImagetoCollectionRemoveManaColorRarity < ActiveRecord::Migration[5.0]
  def change
    remove_column :collection_cards, :mana
    remove_column :collection_cards, :color
    remove_column :collection_cards, :rarity
    add_column :collection_cards, :image_url, :string
  end
end
