class AddingtoCollectionsCardNameManaCostRarityCardTypeColorPowerToughness < ActiveRecord::Migration[5.0]
  def change
    add_column :collection_cards, :name, :string
    add_column :collection_cards, :mana, :string
    add_column :collection_cards, :color, :string
    add_column :collection_cards, :rarity, :string
    add_column :collection_cards, :power, :integer
    add_column :collection_cards, :toughness, :integer
  end
end
