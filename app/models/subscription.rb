class Subscription < ApplicationRecord
  has_many :payements

  validates :price, :type, presence: true
end
