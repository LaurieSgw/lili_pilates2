class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :course

  scope :over, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date > ?', Date.today) }
end
