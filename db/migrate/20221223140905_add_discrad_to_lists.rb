class AddDiscradToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :discarded_at, :datetime
    add_index :lists, :discarded_at
  end
end
