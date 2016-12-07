class RemoveUnneededColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :deck_cards, :deckcard_id, :integer
  end
end
