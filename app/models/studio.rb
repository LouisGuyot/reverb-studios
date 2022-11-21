class Studio < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
