class AddUserIdColumnToListItems < ActiveRecord::Migration[7.0]
  def change
  	add_column :list_items, :user_id, :bigint
  end
end
