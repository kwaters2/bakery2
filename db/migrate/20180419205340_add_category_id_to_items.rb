class AddCategoryIdToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :category_id, :string
  end
end
