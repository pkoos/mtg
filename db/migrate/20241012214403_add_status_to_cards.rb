class AddStatusToCards < ActiveRecord::Migration[7.2]
  def change
    add_column :cards, :status, :string
  end
end
