class Property < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, reject_if: :all_blank

  validates :address, presence: true
  validates :age, presence: true
  validates :note, presence: true
  validates :property_name, presence: true
  validates :rent, presence: true
end
