class AddDiscardToListItems < ActiveRecord::Migration[7.0]
  def change
    add_column :list_items, :discarded_at, :datetime
    add_index :list_items, :discarded_at
  end
end
