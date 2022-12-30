class AddListIdToListItems < ActiveRecord::Migration[7.0]
  def change
    add_column :list_items, :list_id, :integer
  end
end
