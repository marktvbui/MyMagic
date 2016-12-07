class RemovingUnneededColumnsDeckCard < ActiveRecord::Migration[5.0]
  def change
    remove_column :collection_cards, :collection_id, :integer
  end
end
