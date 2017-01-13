class AddAttributesToDeckCards < ActiveRecord::Migration[5.0]
  def change
    add_column :deck_cards, :name, :string
    add_column :deck_cards, :color, :string
    add_column :deck_cards, :rarity, :string
    add_column :deck_cards, :mana, :string
  end
end
