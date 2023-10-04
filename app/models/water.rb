class Water < ApplicationRecord
  has_many :plant_waters
  has_many :plants, through: :plant_waters
end
