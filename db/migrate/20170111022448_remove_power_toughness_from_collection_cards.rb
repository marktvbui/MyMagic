class RemovePowerToughnessFromCollectionCards < ActiveRecord::Migration[5.0]
  def change
    remove_column :collection_cards, :power
    remove_column :collection_cards, :toughness
  end
end
