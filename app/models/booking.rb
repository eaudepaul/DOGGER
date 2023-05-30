class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  validates :user_id, presence: true
  validates :dog_id, presence: true
  validates :status, presence: true, inclusion: { in: %w[pending accepted denied] }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
