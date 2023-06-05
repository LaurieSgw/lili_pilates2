class Course < ApplicationRecord
  has_many :bookings

  validates :date, :available_places, presence: true
end
