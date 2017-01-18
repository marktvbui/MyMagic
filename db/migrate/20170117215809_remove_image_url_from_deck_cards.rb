class RemoveImageUrlFromDeckCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :deck_cards, :image_url
    change_column :deck_cards, :card_id, :string
  end
end
