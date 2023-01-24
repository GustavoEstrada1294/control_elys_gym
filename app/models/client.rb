# == Schema Information
#
# Table name: clients
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_clients_on_name_and_user_id  (name,user_id) UNIQUE
#  index_clients_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Client < ApplicationRecord
   belongs_to :user
   validates :name, presence: true
   has_many :payments
  
   validates :user_id, uniqueness: { scope: :name }
   
end
