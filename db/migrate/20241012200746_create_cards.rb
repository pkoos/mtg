class CreateCards < ActiveRecord::Migration[7.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :set
      t.integer :cardnum
      t.integer :quantity
      t.string :image

      t.timestamps
    end
  end
end
