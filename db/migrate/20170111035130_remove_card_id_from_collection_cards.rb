class RemoveCardIdFromCollectionCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :collection_cards, :card_id
  end
end
