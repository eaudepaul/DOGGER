class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  validates :user_id, presence: true
  validates :status, presence: true, inclusion: { in: %w[pending accepted denied] }
  validates :photo_url, presence: true
  validates :name, presence: true
end
