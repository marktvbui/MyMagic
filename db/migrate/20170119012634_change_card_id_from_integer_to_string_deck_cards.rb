class ChangeCardIdFromIntegerToStringDeckCards < ActiveRecord::Migration[5.0]
  def change
    change_column :deck_cards, :card_id, :string
  end
end
