# == Schema Information
#
# Table name: subscription_types
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  total      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class SubscriptionTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
