class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :card_id
      t.string :card_type
      t.string :color
      t.string :mana_cost
      t.integer :power
      t.integer :toughness
      t.timestamps
    end
  end
end
