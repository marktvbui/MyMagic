class CreateCollectionCards < ActiveRecord::Migration[5.0]
  def change
    create_table :collection_cards do |t|
      t.integer :collection_id
      t.integer :card_id
      t.integer :user_id
      t.timestamps
    end
  end
end
