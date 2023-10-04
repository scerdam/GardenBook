class Plant < ApplicationRecord
  has_many :plant_waters
  has_many :waters, through: :plant_waters
end
