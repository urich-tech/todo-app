class CreateListItems < ActiveRecord::Migration[7.0]
  def change
    create_table :list_items do |t|
      t.string :short_name
      t.boolean :completion_status
      t.text :description

      t.timestamps
    end
  end
end
