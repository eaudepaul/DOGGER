class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :breed, :photo_url, :age, presence: true
  validates :age, numericality: { only_integer: true }
  validates :age, numericality: { greater_than: 0 }
end
