class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, index:{unique:true}
      t.string :trademark, null: false
      t.string :type_product, null: false
      t.text :description, null: false 
      t.integer :price, null: false
     
      t.timestamps
    end
  end
end
