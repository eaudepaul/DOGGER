class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :breed, :age, presence: true
  validates :age, numericality: { only_integer: true }
  validates :age, numericality: { greater_than: 0 }
end
