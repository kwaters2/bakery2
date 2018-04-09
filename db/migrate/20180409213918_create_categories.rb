class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :descriprion
      t.string :image

      t.timestamps
    end
  end
end