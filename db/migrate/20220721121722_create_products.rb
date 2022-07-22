class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :category
      t.string :quantity
      t.text :description
      t.timestamps
    end
  end
end
