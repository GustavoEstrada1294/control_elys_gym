class AddPaymentCompleteToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :payment_total, :boolean, default: false
  end
end
