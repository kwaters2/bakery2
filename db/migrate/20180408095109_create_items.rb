class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.string :category
      t.integer :caloriesPerServing
      t.boolean :glutenFree
      t.boolean :containsNuts
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
