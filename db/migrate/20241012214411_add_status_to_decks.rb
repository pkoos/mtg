class AddStatusToDecks < ActiveRecord::Migration[7.2]
  def change
    add_column :decks, :status, :string
  end
end
