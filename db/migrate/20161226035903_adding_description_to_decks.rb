class AddingDescriptionToDecks < ActiveRecord::Migration[5.0]
  def change
    add_column :decks, :description, :string
  end
end
