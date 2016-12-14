class AddingIDandUrLtoCardsDatabase < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :name, :string
    add_column :cards, :url, :string
  end
end
