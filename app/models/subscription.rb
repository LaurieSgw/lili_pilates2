class Subscription < ApplicationRecord
  has_many :payements

  validates :price, :sub_type, presence: true
end
