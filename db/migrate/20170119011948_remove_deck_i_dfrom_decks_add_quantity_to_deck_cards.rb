class RemoveDeckIDfromDecksAddQuantityToDeckCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :decks, :deck_id
    add_column :deck_cards, :quantity, :integer
  end
end
