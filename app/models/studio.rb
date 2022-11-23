class Studio < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
