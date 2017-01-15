class AddingQuantitytoCollectionUpdatingNameToCardId < ActiveRecord::Migration[5.0]
  def change
    add_column :collection_cards, :quantity, :integer
    rename_column :collection_cards, :name, :card_id
  end
end
