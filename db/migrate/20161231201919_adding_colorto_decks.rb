class AddingColortoDecks < ActiveRecord::Migration[5.0]
  def change
    add_column :decks, :color, :string
  end
end
