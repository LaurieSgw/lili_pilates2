class Review < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 200,
    too_long: "%{count} lettres est le maximum autorisé." }
end
