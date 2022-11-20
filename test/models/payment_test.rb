# == Schema Information
#
# Table name: payments
#
#  id                   :integer          not null, primary key
#  total                :decimal(, )
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  client_id            :integer
#  product_id           :integer
#  subscription_type_id :integer
#
# Indexes
#
#  index_payments_on_client_id             (client_id)
#  index_payments_on_product_id            (product_id)
#  index_payments_on_subscription_type_id  (subscription_type_id)
#
# Foreign Keys
#
#  client_id             (client_id => clients.id)
#  product_id            (product_id => products.id)
#  subscription_type_id  (subscription_type_id => subscription_types.id)
#
require "test_helper"

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
