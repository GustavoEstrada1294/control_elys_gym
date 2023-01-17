class AddUserIdToClients < ActiveRecord::Migration[7.0]
  def change
    add_reference :clients, :user, null: false, foreign_key: true
    add_index :clients, [:name, :user_id], unique: true
  end
end
