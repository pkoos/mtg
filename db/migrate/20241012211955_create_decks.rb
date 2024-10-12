class CreateDecks < ActiveRecord::Migration[7.2]
  def change
    create_table :decks do |t|
      t.string :name
      t.integer :power_level
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
