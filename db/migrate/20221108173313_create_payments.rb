class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :product, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.references :subscription_type, index: true, foreign_key: true
      t.decimal :total
      t.timestamps
    end
  end
end
