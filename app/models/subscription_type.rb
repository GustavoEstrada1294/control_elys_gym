# == Schema Information
#
# Table name: subscription_types
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  total      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SubscriptionType < ApplicationRecord
    validates :name, presence:true, uniqueness: true
    validates :total, presence:true, uniqueness: true
end
