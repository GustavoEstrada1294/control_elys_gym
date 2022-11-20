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
class Payment < ApplicationRecord

    belongs_to :client
    belongs_to :product, optional: true
    belongs_to :subscription_type, optional: true

    validate :relationship_validation
    validate :income_not_valid
    before_create :assign_total

    private
    def relationship_validation
        if self.product.present? || self.subscription_type.present?
            return
        else
            errors.add(:product, "no se puede guardar vacio")
        end

    end

    def income_not_valid
        if self.product.present? && self.subscription_type.present?
            errors.add(:product, "no se pueden guardar 2 campos")
        else
            return
        end           
    end

    def assign_total
        if self.product.present?
            self.total= self.product.price  
        else
            self.total=self.subscription_type.total
        end
    end


end
