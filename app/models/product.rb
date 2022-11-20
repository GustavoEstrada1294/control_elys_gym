# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
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
class Product < ApplicationRecord
    validates :trademark, presence:true
    validates :type_product, presence:true
    validates :price, presence: true
    validates :name, presence: true, uniqueness: true
    has_one_attached :image
end
