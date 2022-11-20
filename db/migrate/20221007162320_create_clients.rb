class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false, uniqueness: true
      t.timestamps
    end
  end
end
