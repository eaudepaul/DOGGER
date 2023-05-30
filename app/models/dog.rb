class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :breed, :photo_url, :age, presence: true
  validates :age, numericality: { only_integer: true }
  validates :age, numericality: { greater_than: 0 }
  validates :user_id, uniqueness: { scope: :name, message: "You already have a dog with this name" }
end
