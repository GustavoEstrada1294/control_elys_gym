# == Schema Information
#
# Table name: products
#
#  id           :bigint           not null, primary key
#  description  :text             not null
#  name         :string           not null
#  price        :integer          not null
#  trademark    :string           not null
#  type_product :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_products_on_name  (name) UNIQUE
#
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
