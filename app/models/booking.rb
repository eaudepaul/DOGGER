class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  validates :user_id, presence: true, uniqueness: { scope: :dog_id }
  validates :dog_id, presence: true
  validates :status, presence: true, inclusion: { in: %w[pending accepted denied] }
  validates :start_date, presence: true
  validates :end_date, presence: true
end
