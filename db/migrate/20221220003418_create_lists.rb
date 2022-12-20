class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.string :name_of_list
      t.boolean :public_view

      t.timestamps
    end
  end
end
