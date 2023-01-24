# == Schema Information
#
# Table name: payments
#
#  id                   :bigint           not null, primary key
#  total                :decimal(, )
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  client_id            :bigint
#  product_id           :bigint
#  subscription_type_id :bigint
#
# Indexes
#
#  index_payments_on_client_id             (client_id)
#  index_payments_on_product_id            (product_id)
#  index_payments_on_subscription_type_id  (subscription_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (client_id => clients.id)
#  fk_rails_...  (product_id => products.id)
#  fk_rails_...  (subscription_type_id => subscription_types.id)
#
require "test_helper"

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
