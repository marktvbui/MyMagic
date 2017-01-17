class RemovingColumnsDeckCardColorManaRarityManaNameAddCardIdImageUrl < ActiveRecord::Migration[5.0]
  def change
    remove_column :deck_cards, :name
    remove_column :deck_cards, :color
    remove_column :deck_cards, :mana
    remove_column :deck_cards, :rarity
    add_column :deck_cards, :image_url, :string
  end
end
